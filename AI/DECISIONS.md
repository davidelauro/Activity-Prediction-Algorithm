# Decision log

This log records choices that affect the direction, interpretation, or reproducibility of the
project. It does not record every small edit. Keep old decisions, and mark a decision as
superseded if I later change my mind.

Use IDs `DEC-001`, `DEC-002`, and so on.

## Entry template

### DEC-___ Short title

- **Date:** YYYY-MM-DD
- **Status:** active / superseded
- **Decision:**
- **Alternatives considered:**
- **Reason:**
- **Consequences or limitations:**
- **Approved by:**
- **Related attempt, source, experiment, data, or proof IDs:**
- **Related prompt log, commit, or pull request:**

---

## Decisions

Add new entries above older entries.

### DEC-015 The research question targets coverage, and the setting gains three layers

- **Date:** 2026-10-11
- **Status:** active
- **Decision:** the project's research question is now the coverage question. We ask how the
  adopter set must sit inside the community's real friendship network for coverage to reach 90
  percent, where coverage keeps its meaning from `DEC-007`: the fraction of busy-or-packed venues
  that appear on the display at all. The question varies network structure, not adoption rate.
  The setting gains three layers to support it. C is the community network, meaning the real
  friendships among all community members, which determines who goes out together. A is the
  adopter set, a vertex subset of C. G is the app's recorded graph of mutual follows among
  adopters, a subgraph of C restricted to A, from which some real ties among adopters are
  missing. The app sees G alone.
- **Alternatives considered:** three. Point the question at match rate, which the owner rejected.
  Point it at both, as the 80/80 pair in `DEC-007` did. Or keep asking for an adoption rate, a
  single scalar, which `DEC-013` had already demoted. The owner also considered taking G equal to
  the full induced subgraph of C on A, and rejected that as the less realistic reading.
- **Reason:** coverage carries no procedure quantifier, since a venue appears when anybody posted
  and that does not depend on how the app computes levels. So the coverage question needs none of
  the six framework prerequisites recorded in `AI/STATUS.md`, and it is answerable now. Pointing
  at coverage also matches what network structure can actually move: coverage turns on whether a
  posting adopter is present, while the match rate turns on the thinning and the censoring. The
  owner's own reasoning supplied the three layers. Co-attendance is driven by real friendships,
  so without C the social graph has no path to coverage at all, which was the obstacle the
  clustered-reach search named earlier the same day. G plays no part in the coverage question,
  because whether the app recorded a follow does not change whether a user posts; G matters only
  when an algorithm uses the graph to infer something, which is the levels problem.
- **Consequences or limitations:** six. The coverage target is unsettled between 80 and 90
  percent. The owner said 90 when this entry was drafted and 80 later the same session, and
  deferred the choice; nothing downstream may assume either. Whether match rate keeps a target at
  all is also unsettled, and the owner should note that 90 percent on match rate may sit above the
  ceiling, which is part of why the question points elsewhere. Match rate and the three levels
  stay defined in the setting; this entry changes what the question asks, not what the app does.
  `DEC-014`'s three reference points
  were designed for the levels problem, and the ceiling there is the optimal rule, which has no
  counterpart for coverage; the natural reference for coverage is instead the coverage a
  uniformly random adopter set of the same size achieves, and that substitution is not yet
  settled. The co-attendance mechanism is still open: whether people arrive in groups drawn from
  C, which changes the arrival process from plain Poisson to batch Poisson and therefore touches
  the owner's own choice of a Poisson process, or whether they arrive independently with a pull
  toward where friends already are. Which network properties get swept is open, with candidates
  being group size, homophily of adoption on C, clustering, and the component structure of A
  inside C. And the extent of G's missingness is deliberately deferred to the point where an
  algorithm uses G, rather than fixed now.
- **Approved by:** owner
- **Related attempt, source, experiment, data, or proof IDs:** amends the setting settled under
  `DEC-007`, which otherwise stands. Sits inside the framing of `DEC-013`. Requires the reference
  substitution noted above against `DEC-014`. Relevant findings, none with an `SRC` entry yet:
  the per-venue probability of a zero has a closed form under within-cluster dependence in
  Guillera-Arroita, Morgan, Ridout and Linkie (2011), equation (3.4), page 308; no source
  bounds the joint probability across all venues under heterogeneous and dependent posting, with
  Chen-Stein the named route through Barbour, Holst and Janson (1992) and Holst (1986), both
  unopened; and no source reports an assortativity coefficient, intraclass correlation, or
  modularity value for an adopter set on any social graph, confirmed twice by search, so the
  swept ranges will have no external anchor.
- **Related prompt log, commit, or pull request:** this session, 2026-10-11, following `DEC-013`
  and `DEC-014`. The clustered-reach obstacle is recorded in
  `AI/PROMPTS/2026-10-11-question-relocation-results.md`.

### DEC-014 Drop the baseline as the reference, evaluate against floor, naive rule and ceiling

- **Date:** 2026-10-11
- **Status:** active
- **Decision:** `sql/activity_score.sql` is no longer the project's reference for success. Three
  reference points replace it. The floor is chance, meaning the match rate a uniformly random
  label assignment achieves, computed at its realized value rather than assumed to be 33 percent.
  The naive rule is what the app would ship without thought, meaning venues ordered by raw
  check-in count, by distinct posters, or by count divided by capacity. The ceiling is the
  optimal rule for the project's own loss, computed inside the simulator where true occupancy is
  known. Success is stated as distance from the ceiling, with the floor and the naive rule as
  context.
- **Alternatives considered:** keep the baseline as the single reference, which `AI/PROJECT.md`
  had required; keep it as one reference among several; or drop it entirely from the writeup. The
  owner rejected it as a reference. Whether it is mentioned once as a frozen prior attempt or
  dropped from the writeup altogether is not settled by this entry.
- **Reason:** the owner judged the baseline unfit as a yardstick. Beating a heuristic that an AI
  produced without validation is a soft target, and a wide margin over it carries little
  information. Distance from the optimal rule carries a meaning, and the optimal rule is citable
  rather than open: Lin, Louis, Paddock and Ridgeway (2006), Theorem 1, and Gu and Koenker
  (2023), Section 3.1, both give the Bayes rule for a 0-1 loss around a percentile cut. For an
  application project under `DEC-013`, the naive rule is also the comparison a practitioner would
  actually make.
- **Consequences or limitations:** four. `AI/PROJECT.md`'s success criterion, which named the
  baseline, is rewritten by this entry. `DEC-005`, which kept the baseline out of the simulator's
  design until comparison time, now has nothing to protect and is noted as moot rather than
  superseded, since its reasoning stands if the baseline is ever reinstated. The ceiling exists
  only inside the simulator, because the optimal rule needs the true occupancy distribution, so
  the writeup must state that the ceiling is a simulator quantity and not a real-world one. And
  the realized floor is not known: `DEC-010` leaves open how far the shown venues depart from
  equal thirds once censoring removes the quiet ones, so computing the floor is work, not a
  constant.
- **Approved by:** owner
- **Related attempt, source, experiment, data, or proof IDs:** rewrites the success criterion set
  in `AI/PROJECT.md`. Renders `DEC-005` moot. Depends on the open question in `DEC-010`. The two
  sources behind the ceiling have no `SRC` entry yet.
- **Related prompt log, commit, or pull request:** this session, 2026-10-11, following `DEC-013`.

### DEC-013 Pursue the application gap, not a theory gap

- **Date:** 2026-10-11
- **Status:** active
- **Decision:** the project pursues its application gap. The aim is a usable level-assignment
  algorithm for the app, evaluated against a synthetic simulator with known ground truth and
  compared against the frozen baseline. The project does not claim a theory gap, and it does not
  claim novelty for the boundary form.
- **Alternatives considered:** four. First, keep the adoption-threshold question of `DEC-007` as
  the headline, which stays blocked on three unsourced inputs and an unselected framework.
  Second, pose the recoverability question the AI proposed this session, which asks whether the
  tercile partition is recoverable from a zero-censored, doubly-indexed thinning and what ceiling
  any procedure faces. Third, pose the joint coverage bound, meaning the probability that every
  busy-or-packed venue emits at least one post under clustered adoption and friend dependence.
  Fourth, pose the realized-baseline question left open by `DEC-010`. The owner chose the
  application framing over all four.
- **Reason:** the project never held a sharp theory gap. It held a measurement gap, since no
  source studies a location-based venue app, publishes the distribution of an adopter's posting
  rate, decomposes a venue effect from a user effect, or reports a clustering figure for an
  adopter set; and it held an application gap, since no such algorithm exists to test. The
  theory-gap candidate raised on the morning of 2026-10-11, that no source defines its estimand
  by the empirical quantiles of the realized finite vector, was falsified the same day; see
  `AI/PROMPTS/2026-10-11-question-relocation-results.md`. An application gap is a sound reason to
  build something and a poor reason to claim a theorem, so the project follows the gap it has.
- **Consequences or limitations:** five. The claim type changes from theorem to simulation
  evidence, so `AGENTS.md`'s rule on conclusions resting only on finite-size experiments now
  governs the headline result. The scope line in `AI/PROJECT.md` putting real data out of scope
  must be revisited, because a usable algorithm needs a calibration path to reality; that
  revisit is not settled by this entry. The three unsourced inputs stop being values to find and
  become quantities the algorithm estimates or the simulator sweeps. The circularity risk becomes
  the project's central methodological threat, since the same author builds the simulator and the
  model while the baseline was built without one; `AI/PROJECT.md`'s existing requirement to fix
  the metric before looking at results is half the defence and the other half is undecided. And
  the recoverability warning does not disappear: if venue identity in both margins makes the
  ordering unrecoverable, then no model recovers it, so the warning becomes a soundness check on
  the modelling results rather than the headline question.
- **Approved by:** owner
- **Related attempt, source, experiment, data, or proof IDs:** supersedes nothing. `DEC-007`
  stays active, and its problem statement stays the description of the setting. Bears on
  `DEC-010`, `DEC-012` and `PRF-001`. Relevant findings: the optimal rule for a 0-1 loss around
  a percentile cut is published, in Lin, Louis, Paddock and Ridgeway (2006), Theorem 1, and Gu
  and Koenker (2023), Section 3.1; the match rate over displayed units is a marginal false
  discovery rate; and Fithian, Elith, Hastie and Keith (2015), Section 1.4, carries the
  recoverability warning. None of these has an `SRC` entry yet.
- **Related prompt log, commit, or pull request:**
  `AI/PROMPTS/2026-10-11-question-relocation-prompts.md` and
  `AI/PROMPTS/2026-10-11-question-relocation-results.md`. The prompts themselves are in
  `dbd829a`.

### DEC-012 Drop venue-independence from Assumption 2

- **Date:** 2026-10-10
- **Status:** active
- **Decision:** Assumption 2 no longer claims posting probability is independent of venue. It
  now states that the probability an adopter posts, given presence, can depend on both the
  adopter and the venue. No mechanism or shape is specified for either dependence.
- **Alternatives considered:** the three options named in `AI/STATUS.md`'s next actions: keep
  venue-independence as a declared simplifying assumption with the evidence recorded as a known
  limitation; weaken the clause, which is what this entry does; or state the unweakened clause
  explicitly as a declared modelling choice rather than implying it is supported. `DEC-011`'s
  occupancy move, considered as a possible way to absorb the dependence through felt crowding,
  was separately ruled out as the explanation, since the owner confirmed the venue-dependence
  evidence found is about venue identity (coolness, promotions, local ownership), not crowding.
- **Reason:** the literature search run this session found real, if indirect, evidence against
  venue-independence (`AI/STATUS.md`'s blocker list; full detail in
  `AI/PROMPTS/2026-10-10-assumption-2-literature.md`), and the owner judged the clause false
  rather than merely unsupported. Keeping it stated as though settled would misrepresent what is
  known. The owner separately ruled out requiring any procedure to learn venue-specific effects
  from that venue's own history, so this entry only removes the false claim; it does not adopt a
  mechanism.
- **Consequences or limitations:** the posting-probability mechanism is now open on two axes
  instead of one: how it varies by adopter, and how it varies by venue, with no documented shape
  for either (see `drafts/search-prompt-posting-probability.md`, which should be understood as
  now covering both axes, not the adopter axis alone). The candidate formalisms discussed this
  session (N-mixture with a beta-binomial extension for heterogeneity, the latent-exposure model,
  matrix factorization, crossed random effects) remain candidates only; none is adopted here.
  `PRF-001` in `AI/PROOF_STATUS.md`, which already assumed venue-dependence is real, is
  unaffected by this entry becoming the problem statement's own stated position rather than only
  a literature finding.
- **Approved by:** owner
- **Related attempt, source, experiment, data, or proof IDs:** resolves the first next action
  recorded after the 2026-10-10 literature search. Related sources: the venue-dependence set
  (`SRC-082`, `SRC-086` through `SRC-088`, `SRC-091` through `SRC-095`) and the formalism set
  (`SRC-009`, `SRC-103` through `SRC-112`).
- **Related prompt log, commit, or pull request:** this session, 2026-10-10, continuing
  `AI/PROMPTS/2026-10-10-assumption-2-literature.md`.

### DEC-011 Bring venue capacity into scope and base levels on occupancy

- **Date:** 2026-10-10
- **Status:** active
- **Decision:** every venue has a fixed, known capacity. The three levels are no longer based on
  terciles of raw true headcount among currently open venues, but on terciles of true
  occupancy, true headcount divided by capacity, among currently open venues. True headcount
  stays defined and named; it is no longer the quantity the display boundaries read off. This
  reverses the scope exclusion in `DEC-007`'s statement that venue capacity stays out of scope.
- **Alternatives considered:** keeping raw headcount terciles and dropping capacity entirely,
  which is what the statement said before this entry; an absolute, per-venue occupancy threshold
  not ranked against other venues that night (considered and set aside, named option B in the
  session, in favour of staying relative to keep the clean tercile-baseline property from
  `DEC-010`).
- **Reason:** the owner wants occupancy, not raw headcount, to be the quantity the map actually
  reports, since a packed small venue and a half-empty large one should not be treated the same
  by a map meant to say how crowded a place feels. The move was also motivated by a specific
  worry raised the same session: that posting probability depends on the venue, which the
  literature search supports (see the blocker on Assumption 2 in `AI/STATUS.md`); if the
  mechanism were really about felt crowding, basing levels on occupancy rather than raw headcount
  could have absorbed that dependence. The owner confirmed in the same session that the
  venue-dependence evidence found is not about crowding, so this move does not resolve
  Assumption 2's open question, but the owner still wants occupancy as the reported quantity on
  its own terms.
- **Consequences or limitations:** `drafts/problem-statement-v2.md` and
  `paper/sections/03-problem-statement.tex` both updated: the capacity scope exclusion is
  removed, a `True headcount and occupancy` definition replaces the old `True headcount`
  definition, the display paragraph reads terciles of occupancy, and the match rate and coverage
  definition reads true occupancy rather than true headcount. The classical N-mixture formalism
  discussed for Assumption 2 assumes one shared count distribution across venues, which breaks
  once capacity varies by venue; a capacity-aware reparameterization (a shared occupancy rate
  rather than a shared headcount distribution) was discussed but not adopted as a decision, only
  as a candidate, and stays open. Whether venue capacity should join the list of quantities the
  research question holds fixed alongside the number of venues, members out, inequality of
  spread, and posting frequency is undecided; this entry does not add it to that list, treating
  capacity for now as a static property of the venue map rather than a varied experimental
  quantity, and that treatment itself is a default the owner has not confirmed.
- **Approved by:** owner
- **Related attempt, source, experiment, data, or proof IDs:** discussed alongside the N-mixture
  and occupancy-model candidates for Assumption 2 (`SRC-009`, `SRC-106`, `SRC-107`, `SRC-112`),
  though this decision is about the display's boundary quantity, separate from Assumption 2's
  still-open posting-probability mechanism.
- **Related prompt log, commit, or pull request:** this session, 2026-10-10, continuing
  `problem/adoption-threshold`.

### DEC-010 Settle the quantile split as terciles

- **Date:** 2026-10-10
- **Status:** active
- **Decision:** the two boundaries that separate quiet, busy, and packed split venues into
  equal thirds by true headcount, each night, each time the app judges. This settles the open
  item left by `DEC-007` item 3.
- **Alternatives considered:** a skewed split, such as 60, 30, 10, which the owner had flagged
  as a way to make the map show mostly quiet venues, matching an intuition about most nights
  having more quiet venues than packed ones.
- **Reason:** the boundaries are quantiles of tonight's own true-headcount distribution, not of
  any fixed historical reference (confirmed the same session). Under that design, whatever
  split fractions are chosen become the exact ground-truth class proportions every time, so a
  trivial procedure that always guesses the majority class scores exactly that fraction.
  Terciles give the cleanest, least arbitrary baseline, exactly 33 percent, and need no further
  argument for why those particular numbers. A skewed split would need its own justification
  and would weaken how much the 80 percent match-rate target actually demonstrates. Terciles
  also match the app's purpose more directly: it reports relative standing within tonight's
  activity, not an absolute capacity judgement, so "top third, middle third, bottom third of
  tonight" is the honest description.
- **Consequences or limitations:** the map will show roughly equal numbers of each color on any
  given night, which does not match an intuition that most nights have more quiet venues than
  busy or packed ones. That intuition, if true, describes the absolute distribution of
  activity, not venues' standing relative to each other, so it is not evidence against this
  choice, but the discussion section should say so explicitly rather than let a reader assume
  the map should look mostly quiet most nights. The venues actually shown (those with at least
  one check-in) do not split into exact thirds either, because venues with zero check-ins,
  disproportionately the true-quiet ones, get hidden before the split is read off. This
  interaction with adoption, already noted in `AI/STATUS.md`, remains open.
- **Approved by:** owner
- **Related attempt, source, experiment, data, or proof IDs:** resolves the first open item
  under `DEC-007`. Does not rely on `SRC-028`, following `DEC-009`.
- **Related prompt log, commit, or pull request:** this session, 2026-10-10, continuing
  `problem/adoption-threshold`.

### DEC-009 Stop citing literature-search sources to justify the live problem statement

- **Date:** 2026-10-10
- **Status:** active
- **Decision:** the problem statement states its own structural choices, such as the number of
  levels, the boundary form, the window, and the two targets, as owner choices. It states them
  without citing the sources logged in `AI/SOURCES.md`. This reverses the part of `DEC-007` item
  3 that cited `SRC-028` as the reason for choosing quantile boundaries over absolute headcounts.
  The choice itself, quantiles rather than absolute counts, stands unchanged. Only its stated
  reason changes, from a literature citation to an owner choice. `AI/SOURCES.md` keeps `SRC-028`
  logged, unverified, and available for the literature review section later if independently
  checked.
- **Alternatives considered:** keeping `SRC-028` as a citation with an explicit caveat that it
  is an unverified lead; dropping quantile boundaries as the boundary rule entirely and
  reopening how boundaries are set.
- **Reason:** `DEC-008` already cleared out literature-search output once because it was driving
  the old framing of the problem. The owner does not want literature-search output, verified or
  not, to keep entering the live problem statement as justification. The problem statement
  should describe the problem as the owner has settled it, not carry provisional outside
  support for a choice the owner already made on other grounds.
- **Consequences or limitations:** `drafts/problem-statement-v2.md`'s basis table needs its
  `SRC-028` citation dropped for the boundary-form row. `AI/STATUS.md` needs the same update.
  `paper/sections/03-problem-statement.tex` already stated the quantile choice without an
  in-text citation, so it needs no change. If the literature review section later verifies
  `SRC-028` independently, it may still cite it there as review material, separate from the
  problem statement.
- **Approved by:** owner
- **Related attempt, source, experiment, data, or proof IDs:** corrects `DEC-007` item 3 and its
  related-sources line without rewriting them, the same way `DEC-008` corrected pointers to
  files it deleted. `SRC-028` stays logged in `AI/SOURCES.md`, status `LEAD`, unaffected.

**Addendum, 2026-10-10 (continuing the same session):** the original consequences list named
only the `SRC-028`/boundary-form citation. The decision's own text already named the window as
one of the structural choices this rule covers, but its basis-table citation of `SRC-062` was
missed at the time and left in place. The owner caught the inconsistency in a later review pass
and extended the drop to the window row as well. `drafts/problem-statement-v2.md`'s basis table
and `AI/STATUS.md` are updated accordingly. `SRC-062` stays logged, unaffected, and the weakness
already on record there, a 4.8-hour whole-session figure divided by an unsourced venues-per-night
number, is now moot for the problem statement regardless, since no citation rests on it there.
- **Related prompt log, commit, or pull request:** this session, 2026-10-10, continuing
  `problem/adoption-threshold`.

### DEC-008 Delete the first two literature rounds and start from the restated problem

- **Date:** 2026-10-10
- **Status:** active
- **Decision:** start over from the problem in `drafts/problem-statement-v2.md`, on a new branch
  `problem/adoption-threshold`. Five files are deleted outright rather than archived:
  `drafts/literature-search-topics.md`, `drafts/search-prompts.md`,
  `drafts/literature-review-results.md`, `drafts/social-aliveness-search.md`, and
  `drafts/problem-statement-draft.md`. `paper/sections/02-literature-review.tex` returns to a
  stub, since its contents answered three research questions the restated problem replaced.
  `AI/SOURCES.md` keeps all 65 entries untouched, and no `AI/` record is deleted.
- **Alternatives considered:** archiving the five drafts under `drafts/archive/` instead of
  deleting them; pruning `AI/SOURCES.md` down to the roughly 25 entries that bear on the
  restated problem and marking the other 35 out of scope; deleting the `AI/` records as well,
  which the owner was offered and did not take; doing the clear-out on
  `literature/search-topics` rather than on a new branch.
- **Reason:** the deleted drafts all belong to the old framing, in which the model predicted a
  headcount per venue from a map of venues. The restated problem outputs a three-level display
  and asks for an adoption threshold, so those drafts no longer describe the work. The owner
  chose outright deletion over archiving, and git history keeps every version regardless.
- **Consequences or limitations:** four present-tense claims in committed records became false
  when the files went, and all four were corrected in the same commit. `AI/SOURCES.md` said the
  full writeups of both searches lived in two of the deleted drafts, and now points at git
  history instead. `drafts/problem-statement-v2.md` said its predecessor stayed in place, and
  now says where it went.
  Two committed decisions still carry pointers to deleted files, and this entry corrects them
  rather than rewriting them, since `AGENTS.md` keeps old decisions as written. `DEC-004` cites
  `drafts/social-aliveness-search.md` for the social-aliveness search detail. `DEC-007` cites
  `drafts/problem-statement-draft.md` as the alternative framing it rejected. Both resolve only
  in git history, at commit `23a4629`.
  The prompt records under `AI/PROMPTS/` also name the deleted files. Those stay untouched and
  stay accurate, because each one is a dated account of a session in which the files existed.
  The main risk this decision accepts is that roughly 35 of the 65 logged sources are now out of
  scope while still sitting in `AI/SOURCES.md`. Nobody has marked which, so a later session has
  to redo that classification or read it out of
  `AI/PROMPTS/2026-10-09-problem-statement.md`, which records the three buckets.
- **Approved by:** owner
- **Related attempt, source, experiment, data, or proof IDs:** follows DEC-007. Touches DEC-004
  and DEC-007 only by correction, not by amendment.
- **Related prompt log, commit, or pull request:** last commit holding the deleted files is
  `23a4629` on `literature/search-topics`.

### DEC-007 Restate the problem around a three-level display and an adoption threshold

- **Date:** 2026-10-09
- **Status:** active
- **Decision:** the problem is restated, and the statement lives in
  `drafts/problem-statement-v2.md`. The app's output is a three-level display rather than a
  headcount. The research question asks for the smallest adoption at which the display becomes
  good enough, and it asks that of every possible procedure rather than of one. The following
  values are settled.
  1. Three levels, labelled quiet, busy and packed, shown as yellow, orange and red. The owner
     chose three so the colours stay recognizable on screen without a legend.
  2. A venue with no check-ins inside the window does not appear on the map at all.
  3. The two boundaries sit at quantiles of the headcount distribution, not at absolute
     headcounts. The quantile split itself is not yet chosen.
  4. The window runs two hours back from the present moment.
  5. Success means a match rate of 80 percent among shown venues, and coverage of 80 percent
     among venues that are genuinely busy or packed.
  6. An adopter is a member who uses the app. Adoption is the percentage of the community who
     are adopters.
  7. Presence at a venue is enforced by the app rather than assumed, since the app accepts a
     check-in only from a user at the venue's location. The posting assumptions therefore number
     three, not four.
  8. The community is a fixed and finite set of people. Deciding who belongs to it in practice
     stays out of scope, and without that assumption no venue has a well defined headcount.
- **Alternatives considered:** predicting a headcount and treating the levels as presentation,
  which is what `drafts/problem-statement-draft.md` does; grey for a venue with no check-ins,
  which was adopted and then dropped; absolute rather than quantile boundaries; four levels
  rather than three; scoring with an asymmetric cost ratio for overestimating, which the earlier
  draft carried and the owner removed; a per-user window derived from each user's own drink rate,
  and a window varying by time of day, both of which the owner raised and both of which were set
  aside as refinements rather than parts of the problem.
- **Reason:** the owner's own reasoning drove the three structural moves. The user acts on a
  comparison between venues, so a count is a means rather than the product. An arithmetic check
  showed that no adoption level yields a precise per-venue headcount for a community of 30,000
  across 100 venues, while a coarse level is reachable, which makes the level the only honest
  output. Asking the question of every possible procedure keeps it inside the problem, because a
  question about one estimator's performance is a question about a solution the statement does
  not contain.
- **Consequences or limitations:** six, and the first three are the ones to watch.
  The problem can no longer be answered by simulation alone. A claim about every procedure needs
  the optimal rule derived first, after which simulation evaluates it, and the result then holds
  relative to the assumed model and prior rather than universally.
  Two quantities the answer depends on still have no source: how unequally members spread across
  venues, which the owner's own analysis ranks above adoption in importance, and how often an
  adopter posts.
  Dropping grey means the map cannot distinguish "no information" from "quiet", and that trade
  belongs in the discussion.
  The quantile split stays open, and a skewed split would raise the trivial baseline and weaken
  the 80 percent target.
  The owner's insight that per-user post counts carry information is deliberately absent, since
  it contradicts the constant-posting-probability assumption and belongs with the solution.
  The hour of the evening is unfixed, and it feeds both the window's justification and turnout.
- **Approved by:** owner
- **Related attempt, source, experiment, data, or proof IDs:** supersedes DEC-006 choices 1 to 7
  and keeps choice 8. Sources: SRC-028 for quantile classes, SRC-062 and SRC-064 for the window,
  SRC-065 and SRC-060 for scale and turnout, SRC-013 through SRC-015 and SRC-022 for the limit
  side, SRC-029 through SRC-031 for how readers treat categories.
- **Related prompt log, commit, or pull request:**
  `AI/PROMPTS/2026-10-09-problem-statement.md`

### DEC-006 Fix the synthetic map's structure and scale

- **Date:** 2026-10-09
- **Status:** superseded by DEC-007 on 2026-10-09, except for choice 8, the scale. Choices 1
  through 7 describe a venue map that the stripped-down problem of DEC-007 does not have. The
  entry stays as written, since the workflow keeps superseded decisions rather than deleting
  them.
- **Decision:** eight choices define the synthetic venue map.
  1. The map carries community members only. The simulator models no general public.
  2. Venues form an abstract adjacency graph. The map assigns no geographic coordinates.
  3. Venues cluster into districts rather than spreading uniformly.
  4. Spatial substitution between nearby venues exists in the simulated ground truth.
  5. Every venue exists from the first timestep. No venue opens or closes during the window.
  6. One fixed map serves every repetition, for now.
  7. Each venue's intrinsic draw comes from a distribution rather than a shared constant.
  8. Scale follows an average European university city. The community holds about 30,000
     members, and the map holds 75 to 125 venues. Community size equals the student population.
- **Alternatives considered:** geographic coordinates instead of an abstract graph; a uniform
  random layout instead of districts; no substitution between venues; venues entering during the
  window; a freshly drawn map for each repetition; an identical intrinsic draw for every venue;
  a simulated general public alongside the community.
- **Reason:** choice 8 follows the data in SRC-060 and SRC-061. Eleven European university
  cities give a median population of 131,591 and a median resident population aged 20 to 29 of
  27,731. Seven of them with current core-city figures give a median student enrolment of
  33,262. Both routes converge on roughly 30,000, which the owner adopted as community size.
  Three of those cities returned 121, 122, and 75 nightlife venues. The owner stated no reason
  for choices 1 through 7, and this entry records them as choices rather than as conclusions.
- **Consequences or limitations:** choice 4 couples venues to each other, so one venue's count
  carries information about its neighbours, and the graph structure becomes informative rather
  than decorative. Choice 6 makes every result conditional on the one map drawn, so no finding
  generalizes across maps until the map is resampled; SRC-027 treats this as a data-generating
  choice to declare in advance, which this entry does. Choice 7 names no distribution, so the
  map cannot be built yet. Three further items stay unspecified and also block implementation:
  the district count and venues per district, whether a graph edge is binary or weighted, and
  which busyness a substituting person reacts to, the real crowd or the displayed heat map. That
  last item overlaps the deferred feedback-loop question below.
- **Deferred, not decided:** two questions wait on a prior decision about how the simulator
  constructs the subset of people who hold the app. The first is whether displayed heat changes
  where people go. The second is whether check-in probability is one global number or one per
  venue. The owner deferred both on the ground that the literature must settle how check-ins get
  modeled first. DEC-004 already defines the per-venue quantity as the probability that a
  present community member checks in, which bundles holding the app and choosing to post into
  one number.
- **Approved by:** owner
- **Related attempt, source, experiment, data, or proof IDs:** SRC-027, SRC-042, SRC-043,
  SRC-045, SRC-046, SRC-060, SRC-061; DEC-004; DEC-005
- **Related prompt log, commit, or pull request:**
  `AI/PROMPTS/2026-10-09-map-design-decisions.md`

### DEC-005 Keep the baseline out of the simulator's design

- **Date:** 2026-10-09
- **Status:** active
- **Decision:** the baseline, meaning `sql/activity_score.sql` and `MODEL.md` together, informs
  no part of the simulator's design. It enters only at comparison time, at the end.
- **Alternatives considered:** reading the baseline's input requirements first and designing the
  simulator to suit them, which is what an assistant had started doing in this session.
- **Reason:** designing the simulated world around what the baseline can represent would rig the
  comparison in the baseline's favour. The faithful order builds the world from the problem
  statement, then reports at the end which mechanisms each model could and could not represent.
- **Consequences or limitations:** three facts about the baseline, surfaced before this rule was
  stated, now count as comparison-time concerns rather than design inputs. The baseline computes
  no distance between venues and reads coordinates only to filter and to average. It discards
  any event with a null coordinate. It divides by how long each venue has been observable. The
  simulator may therefore need an adapter at the end, written then, not now. A separate
  consequence is that the eventual writeup must disclose which mechanisms in the simulated truth
  each model was able to represent, since a margin earned on an unrepresented mechanism measures
  coverage rather than quality.
- **Approved by:** owner
- **Related attempt, source, experiment, data, or proof IDs:** ATT-001; DEC-006
- **Related prompt log, commit, or pull request:**
  `AI/PROMPTS/2026-10-09-map-design-decisions.md`

### DEC-004 Scope the target to the community, settle three activity parameters

- **Date:** 2026-10-09
- **Status:** active
- **Decision:** the project estimates presence of the app's own target community, an unknown
  demographic (young adults who want to socialize with friends), not general venue attendance
  and not a known, closed population. Venue activity is described by three parameters:
  headcount, groups, and familiarity. Familiarity is computed from check-in history and is a
  known covariate, not an uncertain quantity requiring prediction the way headcount and groups
  are.
- **Alternatives considered:** treating the general public as the target population (the
  original, unscoped reading); momentum as a fourth parameter, proposed and then dropped by the
  owner without a stated reason; dwell time as a parameter, considered weaker since Bell and
  Pliner (`SRC-058`) found it tracks group size rather than adding independent information.
- **Reason:** scoping to the community resolves part of the baseline's own ρ_v identifiability
  problem from `MODEL.md`: ρ_v now means "probability a community member who is present checks
  in," a narrower and more answerable question than "probability any real attendee uses this
  app." Familiarity was added because it is the strongest newly surfaced, directly measurable
  candidate from a dedicated search on what makes a place feel socially alive
  (`drafts/social-aliveness-search.md`); Hristova et al. (`SRC-056`) gives computable metrics
  for it from exactly this project's own data, and Dunbar et al. (`SRC-055`) gives a reason to
  care, familiar venues showed more actual engagement than high-turnover ones at comparable or
  larger headcount.
- **Consequences or limitations:** "community" stays an unknown target population, not a closed
  registry, so the identifiability concerns in `SRC-009` through `SRC-015` still apply, narrowed
  but not eliminated. Headcount's own role is also now in question, not whether to include it,
  but whether it should enter linearly: Blut and Iyer (`SRC-053`) and Cheng et al. (`SRC-054`)
  both point toward a non-linear relationship, and Gabriel et al. (`SRC-059`) found raw headcount
  only weakly predicted felt social connection once other factors were controlled. That shape
  question is not resolved by this decision.
- **Approved by:** owner
- **Related attempt, source, experiment, data, or proof IDs:** SRC-053 through SRC-059
- **Related prompt log, commit, or pull request:** `ab4c549` on `literature/search-topics`

### DEC-003 Reserve the choice of whether to adopt the four-layer model

- **Date:** 2026-10-09
- **Status:** active
- **Decision:** whether to adopt any part of the four-layer generative model proposed in the
  external AI-assisted literature search (seasonal baseline, latent nightly busyness, group
  arrivals, detection, summarized in `venuesReferences`) is a choice the owner reserves for
  themselves. An assistant may explain the proposal, surface the literature behind it, and help
  with everything around it, but does not pick it, any part of it, or an alternative, on its
  own.
- **Alternatives considered:** letting an assistant propose a recommendation once the literature
  review is further along.
- **Reason:** matches the ownership rule already in `AGENTS.md`: the mathematical framework is
  the owner's call, and the course the AI-audit workflow came from must not quietly become a
  commitment to a specific model.
- **Consequences or limitations:** none identified yet.
- **Approved by:** owner
- **Related attempt, source, experiment, data, or proof IDs:** SRC-001 through SRC-008
- **Related prompt log, commit, or pull request:** none yet

### DEC-002 Adopt a fixed prose style (USPArC) for all repository writing

- **Date:** 2026-10-08
- **Status:** active
- **Decision:** All new prose in this repository, including report sections, formal writing, and
  chat replies, follows five rules recorded in `AGENTS.md` under "Prose style (USPArC)." The
  rules cover understandable information load (one idea per sentence, no semicolon-joined
  independent clauses, no mid-sentence parentheticals), strong subject-verb-object order and
  active voice, precise wording over vague quantifiers, a consistent formal and plain academic
  register, and conciseness (no unsupported intensifiers and no restating clauses). The
  repository bans em dashes outright, with no exceptions. The rule exempts `schedule/`,
  `progress/`, `dashboard.md`, calendar titles, and other tabular or terse content.
- **Alternatives considered:** no fixed style guide; relying on default AI writing conventions.
- **Reason:** the rule keeps every piece of prose in the eventual report, and in AI-assisted
  writing generally, consistent and readable. Without it, style would drift across sessions and
  across assistants.
- **Consequences or limitations:** none identified yet. Revisit the rule if it proves too rigid
  for a specific section, such as dense mathematical exposition.
- **Approved by:** owner
- **Related attempt, source, experiment, data, or proof IDs:** none
- **Related prompt log, commit, or pull request:** `AI/PROMPTS/2026-10-08-project-scaffolding.md`

### DEC-001 Adopt an AI-audit workflow for a solo project

- **Date:** 2026-10-08
- **Status:** active
- **Decision:** adapt the TU Delft WI4465 (Random Graphs) student project AI-audit workflow to
  this personal project. The adapted set covers `AGENTS.md`, `AI/PROJECT.md`, `AI/STATUS.md`,
  `AI/DECISIONS.md`, `AI/ATTEMPTS.md`, `AI/SOURCES.md`, `AI/AI_USE_SUMMARY.md`, `AI/PROMPTS/`,
  and the `EXPERIMENTS.md` and `PROOF_STATUS.md` optional modules. The adaptation drops the
  group-specific mechanics: teammate review, weekly checkpoint submission, and GitHub
  Desktop/Codex-specific instructions.
- **Alternatives considered:** no formal process, keeping informal notes only; keeping the full
  group template verbatim.
- **Reason:** a prompt, decision, and attempt log stays useful independent of group size. The
  log records what the AI-built baseline actually did, and it will make the later claim that the
  new model substantially beats the baseline auditable instead of asserted.
- **Consequences or limitations:** some course-specific mechanics, such as the weekly checkpoint
  link and teammate pull-request review, have no solo equivalent. The adaptation dropped them
  instead of translating them.
- **Approved by:** owner
- **Related attempt, source, experiment, data, or proof IDs:** none
- **Related prompt log, commit, or pull request:** `AI/PROMPTS/` (record to be added for this
  session)
