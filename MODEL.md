# The model

The implementation is [`sql/activity_score.sql`](sql/activity_score.sql); this file is the
reasoning behind each line, in the order the query computes it.

## 0. The data, and the limit that follows from it

For this purpose every check-in is exactly a triple, plus a graph:

```
(u, t, v)   user, timestamp, venue        F = graph of accepted friendships
```

No content of the post (what/how much, photos, comments) enters the computation — only *who*,
*when*, *where*. We do **not** have: a denominator (non-visits aren't observed), how long
anyone actually stayed, venue metadata, or declared group membership.

**The structural limit.** What we observe is a Poisson thinning of the true activity:

```
Λ_observed(v) = ρ_v · q · Λ_true(v)
```

where ρ_v is the probability that a real party at venue v contains at least one app user.
Thinning preserves the distribution family and only rescales the rate, so the observed count
is unbiased **up to a constant** — *if* ρ_v is constant across venues. It isn't, and it isn't
identifiable from this data alone: without external ground truth, no amount of data separates
"genuinely popular venue" from "popular venue among people who happen to use this app". Two
consequences worth keeping in mind: the score measures popularity *relative to the observed
population*, not absolute popularity, and the UI copy around it should never promise more than
that. The only partial correction available is the **diversity** term (§5).

## 1. The session boundary, not the calendar date

Someone posting at 1am was out *last night*, not *today*:

```
session(t) = date(t in local time − 6 hours)
```

The 6-hour offset is simply a time past which a given domain's activity has reliably ended for
the day — tune it to whatever "nobody's still out" means in context.

## 2. Count people, not events

A naive `count(*)` lets one person's ten events look like ten different people. The fix lives
here, before any weighting or decay, not as a penalty bolted on afterward:

```
presence(v, session, u) = { first(t), last(t) }  -- one row per (venue, session, user)
```

`first` and `last` are kept because the decay term (§6) needs both: how long ago this person's
presence *started*, and how recently they were *still active*.

## 3. Grouping into parties via the friend graph

Two people present at the same venue in the same session who are mutual friends get an edge.
The transitive closure of that edge set, restricted to a single (venue, session), turns pairs
into parties: A↔B and B↔C make one party of three even if A and C aren't connected directly.
Anyone with no edges is a party of one.

This is a deliberate approximation — "friends who happened to check in together" standing in
for "came together as a group" — but it's the only grouping signal the data actually contains.

## 4. Concave weight per party

A party's contribution is **concave in its size**, which is a choice about *utility*, not
about statistical estimation — a venue with 60 people shouldn't score twice a venue with 30:

```
w(party) = sqrt(size)          if size ≥ 2
w(party) = 0.25                if size == 1   (down-weighted, see §6 for why size-1 is
                                                 excluded entirely from the "right now" signal)
```

Applying √ *per party*, before summing, is what encodes "two unrelated pairs beat one party of
four": Σ√k ≠ √Σk, and the difference is the point.

## 5. The diversity correction

A venue whose activity always comes from the same three friends looks identical, in a raw sum
of weights, to a venue crossed by twenty different people — but one is "our regular spot" and
the other is "a genuinely lively public venue". The correction is a Hill number of order 2
(the inverse Simpson index), computed over each person's *share* of a venue's total weight:

```
D(v) = (Σ q)² / Σ q²        where q(u) = Σ over u's parties of  w(party) / size(party)
```

A venue whose traffic is always the same 3 people gives D≈3 no matter how often they show up; a
venue crossed by 20 different people gives D≈20. It's also the only available correction for
the fact that the sample isn't a random draw from the public — it's whoever happens to use the
app and be friends with each other.

`D` is then shrunk toward the population-wide average diversity with a small-sample prior
(n₀ = 5 party-sessions), so a venue with exactly one observed event doesn't get D = 1 "by
construction" rather than by evidence.

## 6. Conditional-survival time decay — not plain exponential

An exponential decay assumes a constant hazard: "the chance you leave in the next hour doesn't
depend on how long you've already been here." For an evening out that's false — people
increasingly tend to leave after a few hours, not at a constant rate from minute one.

Let `D` = hours since the party's first post, `τ` = hours between its first and last post (so
far). Given the party's true duration `T ≥ τ`, a Weibull survival function gives:

```
P(still there | seen for τ already) = S(D) / S(τ) = exp( −[(D/η)^κ − (τ/η)^κ] )
```

with κ > 1 (increasing hazard — the longer you've stayed, the more likely you leave soon) and η
a scale parameter calibrated to the domain's typical visit length (η ≈ 3 hours and κ ≈ 1.8 fit
a "people usually stay a couple of hours" venue well; both are the two knobs to recalibrate for
a different domain). Written as one exponential rather than a ratio of two, so old events don't
produce a 0/0.

The real gain over a plain "time since last post" exponential is for parties **still actively
posting**: a party that arrived 4 hours ago but posted again 15 minutes ago scores meaningfully
higher under this model than under one that only looks at the last timestamp.

Only parties of size ≥ 2 feed this "right now" signal — a lone individual isn't "activity" by
definition here, and excluding them is also what prevents this number from ever reconstructing
a single person's real-time location.

## 7. Confidence, and the regime that ramps with sample size

With few active users, almost every fine statistic here is estimated on a sample of two or
three parties, and differences between venues are not distinguishable from chance. With many
users, those same statistics become the most informative signal available.

Rather than two separate algorithms switched on a hard threshold — which would reorder every
venue discontinuously the day the Nth user joins, and flicker back and forth if someone stops
posting — there is **one** formula whose parameters ramp with a single value:

```
θ = clamp((N − N_low) / (N_high − N_low), 0, 1)     N = distinct active users in scope
```

- θ = 0: strong shrinkage, no diversity correction, no overdispersion correction — the
  "conservative" regime, appropriate with too little data to say much.
- θ = 1: weak shrinkage, diversity at full weight, effective counts corrected for
  overdispersion — the "data-rich" regime.

A confidence value is exposed alongside the score itself, based on how many independent
party-sessions a venue has accumulated (calibrated against how many are needed to tell two
rates apart at a 2:1 ratio with reasonable statistical confidence). Below that, the ordering
between venues is mostly noise, and the caller should know it — flattening a color/ranking
scale rather than presenting a hierarchy the data can't support.

## 8. Bayesian shrinkage

The final score is not the raw sum of weights but a Gamma–Poisson posterior mean:

```
score(v) = ( β · rate_global + S_eff(v) ) / ( β + E_eff(v) )
```

where `S_eff` / `E_eff` are the venue's weighted activity and exposure (its "opportunity to be
observed"), corrected for overdispersion by θ (the sum of weights is a compound-Poisson
process, not a plain count, so variance ≠ mean and the correction keeps the Gamma–Poisson
conjugacy valid). `β` sets how many "venue-sessions worth" of prior weight get applied before
the data takes over — large in the conservative regime, small in the data-rich one.

A square root is applied to the final posterior mean before it's used for display, which is a
UI-utility choice (§4's reasoning again) and deliberately applied *after* the Bayesian
machinery, not before it — square-rooting earlier would break the variance structure the
shrinkage above depends on.

---

Everything above generalizes beyond "venues" to any domain with the same shape: sparse
check-in-like events, a trust/social graph to disambiguate independent groups, and a need for
an honest confidence signal alongside the estimate.
