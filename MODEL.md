# The model

[`sql/activity_score.sql`](sql/activity_score.sql) implements the model. This file explains the
reasoning behind each line, in the order the query computes it.

## 0. The data, and the limit that follows from it

For this purpose, every check-in reduces to exactly a triple, plus a graph:

```
(u, t, v)   user, timestamp, venue        F = graph of accepted friendships
```

The content of the post, meaning what the post says, how much it says, its photos, and its
comments, enters no part of the computation. Only who, when, and where enter it. The model does
not have a denominator, since non-visits are not observed. It does not have how long anyone
actually stayed, venue metadata, or declared group membership.

This absence of a denominator produces a structural limit. What the model observes is a Poisson
thinning of the true activity:

```
Λ_observed(v) = ρ_v · q · Λ_true(v)
```

Here ρ_v is the probability that a real party at venue v contains at least one app user.
Thinning preserves the distribution family and only rescales the rate. The observed count is
therefore unbiased up to a constant, if ρ_v stays constant across venues. It does not stay
constant, and no amount of data identifies it from this data alone: without external ground
truth, nothing separates "a genuinely popular venue" from "a venue popular among people who
happen to use this app." Two consequences follow. The score measures popularity relative to the
observed population, not absolute popularity. The UI copy around it should never promise more
than that. The diversity term (section 5) is the only partial correction available.

## 1. The session boundary, not the calendar date

Someone posting at 1am was out last night, not today:

```
session(t) = date(t in local time − 6 hours)
```

The 6-hour offset marks a time past which a given domain's activity has reliably ended for the
day. Tune it to whatever "nobody is still out" means in context.

## 2. Count people, not events

A naive `count(*)` lets one person's ten events look like ten different people. The fix lives
here, before any weighting or decay, not as a penalty bolted on afterward:

```
presence(v, session, u) = { first(t), last(t) }  -- one row per (venue, session, user)
```

The model keeps `first` and `last` because the decay term (section 6) needs both: how long ago
this person's presence started, and how recently this person was still active.

## 3. Grouping into parties via the friend graph

Two people present at the same venue in the same session, who are mutual friends, get an edge.
The transitive closure of that edge set, restricted to a single (venue, session) pair, turns
pairs into parties. For example, an A-B edge and a B-C edge make one party of three, even when A
and C share no direct edge. Anyone with no edges forms a party of one.

This grouping is a deliberate approximation. "Friends who happened to check in together" stands
in for "came together as a group." It is the only grouping signal the data actually contains.

## 4. Concave weight per party

A party's contribution is concave in its size. This choice is about utility, not about
statistical estimation: a venue with 60 people should not score twice a venue with 30.

```
w(party) = sqrt(size)          if size ≥ 2
w(party) = 0.25                if size == 1   (down-weighted, see §6 for why size-1 is
                                                 excluded entirely from the "right now" signal)
```

Applying the square root per party, before summing, encodes "two unrelated pairs beat one party
of four": Σ√k differs from √Σk, and that difference is the point.

## 5. The diversity correction

A venue whose activity always comes from the same three friends looks identical, in a raw sum of
weights, to a venue crossed by twenty different people. One venue is "our regular spot," and the
other is "a genuinely lively public venue." The correction uses a Hill number of order 2, the
inverse Simpson index, computed over each person's share of a venue's total weight:

```
D(v) = (Σ q)² / Σ q²        where q(u) = Σ over u's parties of  w(party) / size(party)
```

A venue whose traffic always comes from the same 3 people gives D of about 3, no matter how
often they show up. A venue crossed by 20 different people gives D of about 20. This correction
is also the only one available for the fact that the sample is not a random draw from the
public: it is whoever happens to use the app and be friends with each other.

The model then shrinks D toward the population-wide average diversity, with a small-sample prior
of n₀ equal to 5 party-sessions. This shrinkage keeps a venue with exactly one observed event
from getting D equal to 1 by construction, rather than by evidence.

## 6. Conditional-survival time decay, not plain exponential

An exponential decay assumes a constant hazard: the chance that you leave in the next hour does
not depend on how long you have already been here. For an evening out, that assumption is false.
People increasingly tend to leave after a few hours, not at a constant rate from minute one.

Let D denote the hours since the party's first post, and let τ denote the hours between its
first and last post so far. Given the party's true duration T, where T is at least τ, a Weibull
survival function gives:

```
P(still there | seen for τ already) = S(D) / S(τ) = exp( −[(D/η)^κ − (τ/η)^κ] )
```

Here κ exceeds 1, which gives an increasing hazard: the longer you have stayed, the more likely
you are to leave soon. The parameter η is a scale parameter, calibrated to the domain's typical
visit length. The values η of about 3 hours and κ of about 1.8 fit a "people usually stay a
couple of hours" venue well. Both values are the two knobs to recalibrate for a different
domain. The formula is written as one exponential rather than a ratio of two, so old events
never produce a 0/0.

The real gain over a plain "time since last post" exponential shows up for parties still
actively posting. A party that arrived 4 hours ago but posted again 15 minutes ago scores
meaningfully higher under this model than under one that looks only at the last timestamp.

Only parties of size 2 or more feed this "right now" signal. A lone individual is not "activity"
by definition here. Excluding lone individuals also prevents this number from ever
reconstructing a single person's real-time location.

## 7. Confidence, and the regime that ramps with sample size

With few active users, almost every fine statistic here gets estimated on a sample of two or
three parties, and differences between venues are not distinguishable from chance. With many
users, those same statistics become the most informative signal available.

Two separate algorithms, switched on a hard threshold, would reorder every venue
discontinuously the day the Nth user joins, and would flicker back and forth if someone stopped
posting. Instead, one formula has parameters that ramp with a single value:

```
θ = clamp((N − N_low) / (N_high − N_low), 0, 1)     N = distinct active users in scope
```

At θ equal to 0, the model applies strong shrinkage, no diversity correction, and no
overdispersion correction. This is the conservative regime, appropriate when too little data
exists to say much. At θ equal to 1, the model applies weak shrinkage, full-weight diversity, and
effective counts corrected for overdispersion. This is the data-rich regime.

The model exposes a confidence value alongside the score itself, based on how many independent
party-sessions a venue has accumulated. The threshold is calibrated against how many
party-sessions are needed to tell two rates apart at a 2:1 ratio with reasonable statistical
confidence. Below that threshold, the ordering between venues is mostly noise, and the caller
should know it. The UI should flatten a color or ranking scale rather than present a hierarchy
the data cannot support.

## 8. Bayesian shrinkage

The final score is not the raw sum of weights, but a Gamma-Poisson posterior mean:

```
score(v) = ( β · rate_global + S_eff(v) ) / ( β + E_eff(v) )
```

Here S_eff and E_eff denote the venue's weighted activity and exposure, its opportunity to be
observed. θ corrects both for overdispersion, because the sum of weights forms a
compound-Poisson process, not a plain count, so variance does not equal the mean. This
correction keeps the Gamma-Poisson conjugacy valid. β sets how many "venue-sessions worth" of
prior weight apply before the data takes over. β is large in the conservative regime and small in
the data-rich one.

A square root applies to the final posterior mean before display, which is a UI-utility choice,
the same reasoning as section 4. The square root applies deliberately after the Bayesian
machinery, not before it: square-rooting earlier would break the variance structure that the
shrinkage above depends on.

---

Everything above generalizes beyond venues to any domain with the same shape: sparse
check-in-like events, a trust or social graph to disambiguate independent groups, and a need for
an honest confidence signal alongside the estimate.
