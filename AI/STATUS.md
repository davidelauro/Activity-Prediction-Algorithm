# Current status and handoff

This file is the short handoff to the next session. Refresh it at the end of each substantial
work session. Replace stale details instead of letting this file become a diary.

- **Last updated:** 2026-10-11
- **Updated by:** Claude Code
- **Current branch:** problem/adoption-threshold, branched from `literature/search-topics` at
  `23a4629`
- **Current stage:** planning, with the framing settled by `DEC-013` and the build not started

## Where the project stands

`DEC-013` settled the framing on 2026-10-11. The project pursues its application gap, meaning a
usable level-assignment algorithm evaluated against the simulator and compared against the frozen
baseline. It claims no theory gap. The project never held one: it held a measurement gap, since no
source studies a location-based venue app, and an application gap, since no such algorithm exists
to test. The theory-gap candidate raised that morning was falsified the same afternoon.

The adoption-threshold question of `DEC-007` is no longer the headline. It becomes the deployment
question of whether a given night carries enough signal to display anything.

`DEC-014` then dropped the baseline as the reference for success. Three reference points replace
it: chance as the floor at its realized rather than assumed value, the naive rule the app would
otherwise ship, and the optimal rule as the ceiling. Success is distance from the ceiling. This
renders `DEC-005` moot and makes computing the realized floor a piece of work rather than a
constant, since `DEC-010` leaves it open.

`DEC-015` then pointed the research question at coverage and added three layers to the setting.
C is the community's real friendship network, which decides who goes out together. A is the
adopter set, a subset of C's members. G is the app's recorded follows among adopters. The app sees
G alone. The question asks how A must sit inside C for coverage to reach the target, varying
structure rather than adoption rate. See `drafts/problem-statement-v3.md`, which is the file to
read first.

The owner adopted the information-complete case for G, meaning G holds every friendship between
two adopters. The argument is not that the data is perfect. Correlated posting can arise only
between two co-present adopter friends, since non-adopters post nothing and non-friends post
independently, so such a G holds the complete dependence structure. It is the best case for any
graph-using algorithm and therefore the right first experiment. This is argued and adopted, and it
has no `DEC` entry of its own yet.

### The experiment design, worked out 2026-10-11 and not yet run

Stage 1 walks the curve where coverage equals the target. Two knobs parameterize it: how many
adopters there are, and how clustered they are on C. More clustering needs more adopters to hold
the same coverage, so the target fixes a curve rather than a point. The family of adopter sets
hitting any target is astronomically large, so we never enumerate it; we generate adopter sets
with given values of those two knobs and average over seeds. Do not parameterize by anything close
to the fraction of friend groups containing an adopter, since that is almost coverage itself and
the question would collapse.

Stage 2 takes points along that curve and measures what the graph is worth, reporting both the
gain in level accuracy and how well G predicts the coverage problem an operator cannot otherwise
see. Stage 2 must run at more than one point on the curve, because the graph's value is largest
exactly where A is most clustered, and a single point could show no effect and support a false
conclusion that the graph is useless.

Two findings constrain the design. Coverage is constant in G, so varying the graph at fixed A
changes only the levels and nothing is confounded. And the naive rules ignore the graph entirely,
so nothing measures G's value until a graph-using rule exists.

Two choices gate the build and neither is settled. Whether the algorithm estimates occupancy and
then cuts it into terciles, or assigns levels directly. And whether its boundaries come from all
open venues or only from the venues it can see.

The problem is restated and settled. It lives in
[`drafts/problem-statement-v2.md`](../drafts/problem-statement-v2.md), which is the one file to
read first. The app outputs a three-level display rather than a headcount, and the research
question asks the smallest app adoption at which that display is good enough, put to every
possible procedure rather than to one. `DEC-007` records every settled value and `DEC-008`
records the clear-out that followed.

No code exists. The paper holds only scaffolding.

## Done and checked

- Baseline review: `sql/activity_score.sql` and `MODEL.md` read and sanity-checked. No syntax or
  logic bugs found. `DEC-005` then ruled the baseline out of the simulator's design until
  comparison time.
- AI-audit workflow scaffolding, and a LaTeX paper that builds clean with `pdflatex` and
  `bibtex` at their exact binary paths in `.vscode/settings.json`, since this machine's TeX
  install is invisible to VS Code's own `PATH`. `paper/references.bib` holds no entries yet, and
  carries a warning that BibTeX starts parsing at an at-sign character anywhere in the file,
  even inside a comment.
- Two literature searches, run externally, produced `SRC-001` through `SRC-061`. A third pass in
  session added `SRC-062` through `SRC-065`.
- The 2026-10-10 search session added `SRC-066` through `SRC-111` and promoted `SRC-001` to
  `CHECKED`. Seven background agents ran in three waves, covering per-adopter posting probability,
  colocated-friend dependency, frameworks for a bound over every procedure, observational venue
  dependence, check-in motivation, the within-person across-venue distribution, and candidate
  formalisms for a probability indexed by both person and venue. See
  `AI/PROMPTS/2026-10-10-assumption-2-literature.md`.
- The 2026-10-11 search session added `SRC-113` through `SRC-137`, running the three clustering
  prompts drafted in `4e3afe9`. Three background agents covered network threshold theory, the
  empirical clustering of real app adoption, and the survey-methodology design effect. See
  `AI/PROMPTS/2026-10-11-clustered-adoption-literature.md`, and
  `AI/PROMPTS/2026-10-11-question-relocation-prompts.md`, and
  `AI/PROMPTS/2026-10-11-question-relocation-results.md`.
- `AI/SOURCES.md` now holds 137 sources: 45 `CHECKED`, 89 `LEAD`, 3 `REJECTED`. Every `CHECKED`
  entry records which sections were read, and each was read by Claude Code. The owner has
  personally read none of the 137.
- Scale figures from direct Eurostat and Overpass queries: a median European university city of
  about 130,000 residents, roughly 30,000 students taken as the community size, and 75 to 125
  nightlife venues. Recorded as `SRC-060`, `SRC-061` and `SRC-065`.
- An arithmetic check during the 2026-10-09 session established that no adoption level yields a
  precise per-venue headcount for 30,000 members across 100 venues, while a coarse level stays
  reachable. That result is why the output is a level and not a number.
- `DEC-008`: the first two literature rounds were deleted. Five drafts went, and
  `paper/sections/02-literature-review.tex` returned to a stub. No `AI/` record was deleted.
  `23a4629` is the last commit holding the deleted files.
- `DEC-009`: the problem statement states its own structural choices without citing
  `AI/SOURCES.md` entries. Drops the `SRC-028` citation that had backed the quantile-boundary
  choice; the choice itself stands.
- The community is now explicitly a finite set fixed only at the moment it is judged, not fixed
  across nights, so its size can differ night to night (a festival night pulling in more people
  who fit the demographic is a change in that size, not a violation of the definition).
- `DEC-010`: boundaries confirmed as quantiles of tonight's own true-headcount distribution
  among currently open venues, recomputed each judged moment, not against a fixed historical
  count. The split is settled as terciles, equal thirds, which fixes the trivial match-rate
  baseline at exactly 33 percent.
- `DEC-011`: venue capacity is now in scope, and the display's boundaries read terciles of true
  occupancy (headcount divided by capacity), not raw headcount. True headcount stays defined as
  its own quantity. This does not resolve Assumption 2's venue-independence doubt; the owner
  confirmed the venue-dependence evidence found is about venue identity, not crowding, so
  occupancy does not absorb it.

- `paper/sections/03-problem-statement.tex` is written against version 3, with the three layers as
  a definition, the information-complete app graph as Assumption 4, and the coverage question with
  its target left as a parameter because `DEC-015` records the value as unsettled. The paper builds
  clean at 3 pages, with only the pre-existing empty-bibliography warning. The Fithian et al.
  result in its final paragraph carries no citation call, because `paper/references.bib` forbids an
  entry for a source nobody here has opened; an agent read it and the owner has not.

## In progress

- All seven question-relocation prompts have now run, and the owner is reviewing the results. See
  `AI/PROMPTS/2026-10-11-question-relocation-results.md` for the verdicts, the findings, and the
  corrections to existing entries. Two candidates returned negative, clustered reach and display
  design. Censored boundaries returned a sub-problem rather than a replacement. Identifiability,
  coverage and ranking each improve one half of the current question and not the other. Roughly
  sixty reported sources are still unlogged, pending the owner's decision on which candidates
  survive.
- The seven prompts stay in `drafts/` under the `question-prompt-` prefix. Each holds the problem's
  setting fixed and moves only the question. The setting means every object, assumption and
  observation rule in `drafts/problem-statement-v2.md` except the paragraph beginning "Our
  question is". The seven are identifiability, coverage as a detection guarantee, recovery of
  tonight's ordering, the censored display and its own boundaries, the reach of a clustered
  adopter set, the display as the open question, and an open channel asking which question forms
  this observation structure usually carries. The partition into seven is the AI's, which is why
  the seventh exists; see `AI/PROMPTS/2026-10-11-question-relocation-prompts.md` for how they
  were drafted.

## Blockers or open questions

- Whether venue capacity joins the list of quantities the research question holds fixed
  (currently: number of venues, members out, inequality of spread, posting frequency) is
  undecided. `DEC-011` treats capacity as a static map property for now, not as a fifth varied
  quantity, but that is a default, not a confirmed choice.
- The hour of the evening is unfixed, and it feeds both the window's justification and the
  turnout figure.
- How unequally members spread across venues still has no source. The owner's own analysis ranks
  this above adoption rate in importance.
- How often an adopter posts now has one anchor and no shape. `SRC-081` gives an aggregate
  per-visit check-in probability of 0.114, across all venue types, among self-selected heavy
  Foursquare users. No source publishes the distribution of that ratio across individuals, so its
  shape, its variance, and whether it is unimodal are unmeasured. The 2026-10-10 searches closed
  this as a literature question, which makes the shape a declared modelling choice rather than a
  documented fact.
- `DEC-012`: Assumption 2's venue-independence clause is dropped, not merely doubted. Posting
  probability can now depend on both the adopter and the venue, with neither mechanism
  specified. The motivation literature that drove this (coolness and brag value, `SRC-091`,
  `SRC-094`; perceived interestingness, `SRC-082`, `SRC-092`; local ownership, `SRC-092`;
  promotions, `SRC-094` at 19.89 percent, `SRC-087` where one promotion moved a chain from 5 to
  1323 daily check-ins; observational venue-level effects, `SRC-086`, `SRC-088`, with caveats
  recorded there) stays as the evidentiary record. No source holds a user fixed, restricts to
  bars, and measures posting from one bar to the next, and no source reports a variance
  decomposition separating a venue component from a user component, so the magnitude and shape
  of venue-dependence remain open, same status as adopter-dependence.
- Assumption 3 has no quantitative mechanism. `SRC-001` supports its qualitative direction only.
  `SRC-078` and `SRC-079` give a cascade form but publish no fitted magnitudes and exclude
  simultaneity by construction, while Assumption 3 concerns friends present at the same time.
  `SRC-080` is the only calibrated per-tie contagion probability found, and it measures URL
  resharing through a news feed rather than colocated posting. The shared group-level latent event
  and the beta-binomial or common-shock constructions have no empirical calibration in this
  literature.
- Adoption rate is currently treated as a single aggregate percentage, with no stated model for
  which community members it picks out. The owner flagged that adoption will probably cluster
  along the social graph, not fall as a uniform random sample, since apps commonly spread
  friend to friend. This is linked to Assumption 3: a colocated company of friends is then more
  likely to be either mostly adopters or mostly non-adopters together, rather than an even mix,
  which changes what a company's check-ins look like and complicates treating adoption rate as
  one clean, uniformly-applied number (as `PRF-001` currently does). No mechanism for how
  adoption clusters is proposed; this is only logged as a consideration, not yet a decision. It
  would also answer `AI/PROJECT.md`'s open "Chosen extension" slot if adopted, which it has not
  been. All three search prompts have now been run; see
  `AI/PROMPTS/2026-10-11-clustered-adoption-literature.md` and the four bullets below.
- Clustered adoption is empirically large, and measured. `SRC-113` reports that adopters carry a
  five-fold higher share of adopters in their local networks, with raw relative risks running from
  about 9 at one adopter friend to roughly 30 at thirteen or fourteen. `SRC-115` reports a
  network-neighbour odds ratio of 7.49 with interval (5.64, 9.94). `SRC-114` reports that Skype
  adopters already had 19 percent of their contacts adopted at their own moment of adoption. Note
  that the usual methodological hierarchy inverts here: this project needs the observed clustering
  of the adopter set, not its cause, so these raw figures bear on the question while the
  homophily-matched estimates near 2 to 3 in `SRC-113` and `SRC-115` answer a different one. That
  argument has to be made in the writeup rather than assumed, and `SRC-118` is the critique to
  make it against.
- The direction of the clustering effect is unsettled in the literature, and three assumptions
  determine the sign. What is held fixed: `SRC-120` finds clustering raises the percolation
  threshold holding the degree distribution and correlation structure fixed, while `SRC-121` finds
  it lowers the transition holding only mean degree fixed. The dynamics: `SRC-122`'s equation (26)
  gives an explicit sign criterion, which fails for site and bond percolation at every mean degree
  above 2 but holds for Watts' threshold model only between mean degree 3 and 29. What the
  clustered set correlates with: clustering on adoption status raises the threshold (`SRC-119`,
  `SRC-125`), while correlation of immunity with contact rate lowers it (`SRC-124`). No blanket
  claim that clustering hurts this project is defensible.
- The epidemic-threshold analogy is weaker than it looks, and this is the main caution from the
  2026-10-11 round. `SRC-119` gives the one closed form found,
  `pi_v^c = (1/(1-h))(1 - 1/R_0)` in the Coleman homophily index, with the striking property that
  herd immunity becomes unattainable once `h >= 1/R_0`, which matches the shape of this project's
  own question about whether a sufficient adoption rate exists at all. But herd immunity blocks
  transmission paths, while this project's coverage target asks whether each venue holds a posting
  adopter. Nothing propagates through the social graph at display time, so `R_0` has no evident
  counterpart here and the formula cannot be lifted across without inventing one. `SRC-123` is the
  closest real match despite being the least cited of the eight, because it measures sampling
  reach: strong community structure capped recruitment at roughly 85 percent of the population,
  design effects reached about 40 against 1 to 2 for random networks, and whole subgroups went
  unreached rather than merely mis-estimated.
- The design effect is confirmed and does not reach the coverage target. `SRC-127` equation 1 gives
  `DE = 1 + (n-1) rho`, with equation 17 correcting for unequal cluster sizes as
  `DE = 1 + {(CV^2+1) n_bar - 1} rho`, and `SRC-128` states the assumptions. For a binary trait the
  ANOVA definition of `rho` carries over but is tied to the outcome prevalence, and `SRC-130`
  confirms the owner's suspicion that competing definitions exist. The obstacle: `SRC-132` states
  that the variance-based effective sample size does not reproduce the probability of a zero, and
  defines a separate parameter for that purpose lying between `n/deff` and `n`. Its body is unread,
  which makes opening it a priority, since the whole design-effect route to coverage turns on it.
  The machinery that does treat the probability of at least one positive lives in veterinary
  surveillance (`SRC-133`, with `SRC-134` as its primary source) and in ecology (`SRC-136`), and it
  proceeds by explicit mixture model rather than by a multiplier. `SRC-136` is the most promising
  unopened lead of the round, because it joins occupancy modelling under cluster sampling to the
  strands this project already reached at `SRC-009`, `SRC-010`, `SRC-016` and `SRC-107`.
- The link between the empirical figures and either calculation is missing. No source found reports
  an assortativity coefficient, an intraclass correlation, or a modularity value for an adopter set
  on a social graph, and none studies a location-based venue app at all. Converting a
  friend-adoption odds ratio into an `rho` would be this project's own derivation, not a citation.
- The venues actually shown (those with at least one check-in) do not split into exact terciles,
  because venues with zero check-ins, disproportionately the true-quiet ones, get hidden before
  the split is read off. How much this shifts the realized trivial baseline, and how that shift
  moves with adoption rate, is open. See `DEC-010`.
- Whether the project keeps its current research question is now open. `DEC-007` stands, and
  nothing is changed, but the owner has asked for candidate relocations of the question over the
  same setting. Two documented weaknesses drive this: three of the four quantities the question
  holds fixed have no source, and the every-procedure half is blocked on an unselected framework.
  The seven prompts under "In progress" are the search instrument, not a decision.
- The optimal rule is not derived here, but it may be citable rather than derivable from
  scratch. Lin, Louis, Paddock and Ridgeway (2006), Theorem 1, and Gu and Koenker (2023),
  Section 3.1, independently give the same rule for a 0/1 loss around a percentile cut point:
  rank the posterior probability that a unit lies above the cut. This is logged as a literature
  fact, not as a proposal; the choice of model and framework is the owner's. Until the owner
  settles it there is no limit to compare against and nothing for a simulation to evaluate.
- The match rate has two established names. Over displayed venues it is the marginal FDR of Gu and
  Koenker (2023), Section 3.3. Over all venues it is one minus the normalized Hamming loss of
  Chen, Gao and Zhang (2022), whose equation (14) gives the step to exact recovery. The random
  denominator treated as a defect under `DEC-010` is therefore a named quantity.
- Relative recovery may not survive `DEC-012`. Fithian, Elith, Hastie and Keith (2015), Sections
  1.3 and 1.4, recover relative intensity under thinning only when the thinning covariates differ
  from the intensity covariates. `DEC-012` makes posting probability depend on venue identity
  while occupancy is indexed by venue, so the margins share a covariate. Hastie and Fithian (2013)
  reads the other way. The two are one research line and the tension is unresolved.
- Identifiability would not settle the existence question. Farcomeni and Tardella (2012) prove
  identifiability in Theorem 3.1 and then show in Example 3.1 that the identified alternatives are
  distinguished only 41 and 76 percent of the time. Their equation (3.1) shows that conditioning
  on units observed at least once destroys identifiability of the hidden mass.
- The probability of a zero under within-cluster dependence has a closed form for one cluster,
  Guillera-Arroita, Morgan, Ridout and Linkie (2011), equation (3.4), page 308. No joint guarantee
  over every cluster exists under heterogeneity and dependence together. The named route is
  Chen-Stein, with Barbour, Holst and Janson (1992) and Holst (1986) unopened.
- `AI/STATUS.md`'s own claim that only `SRC-104` and `SRC-107` model an unobserved true zero is
  corrected below under the 2026-10-11 results record. Hwang, Stoklosa and Chen (2022), equation
  (4), removes the unit rather than keeping it with a zero.
- The current question is not novel in form. It exists in two literatures the record does not hold
  as the minimum penetration rate needed for an accuracy target, and in the transport version the
  penetration rate is itself estimated jointly, which bears on `PRF-001`.
- The boundary form is not novel either, and the earlier claim that it was is withdrawn. Three
  agents reported on 2026-10-11 that no source defines its estimand by the empirical quantiles of
  the realized finite vector. A second open-channel pass the same day falsified that. Lin, Louis,
  Paddock and Ridgeway (2006), equation (3), page 918, define the true rank as a function of the
  realized vector alone, equation (7) converts it to a percentile, and Section 4 builds losses
  targeting correct classification into the upper part of the realized ensemble. Paddock, Ridgeway,
  Lin and Louis (2006) and Ginestet (2011), Section 3.2.1, do the same. The earlier agents appear
  to have collapsed a self-referential procedure into a self-referential estimand; Henderson and
  Newton (2016) is the case that separates them, with the estimand a quantile of the prior and the
  self-referential step inside the procedure.
- What remains unfound is narrower. No source combines the self-referential boundary with units
  that vanish from the ensemble, so that the empirical quantile is computed over a random subset of
  the very vector it partitions. Any novelty claim should rest on the censoring and the dependence,
  not on the boundary form. Shen and Louis (1998), JRSS-B 60:455-471, is the primary source for the
  ensemble rank estimand and is paywalled and unread, so this correction's own foundation is one
  source deep.
- The framework for the every-procedure claim is unchosen. The 2026-10-10 search surfaced
  candidates and their requirements without recommending one: minimax reduction to M-ary testing
  (`SRC-066`), Le Cam (`SRC-066`, `SRC-067`), Fano including its approximate-recovery form
  (`SRC-068`), Assouad (`SRC-069`), Bayes risk through f-informativity (`SRC-070`), the
  Bayes-optimal rule (`SRC-071`), ordinal risk over all measurable decision functions
  (`SRC-072`), and minimax estimation under binomial thinning (`SRC-073`).
- Six prerequisites must be settled before any framework applies, and they are the owner's to
  decide. Is the thinning probability known to the procedure, or must a procedure estimate it.
  `PRF-001` in `AI/PROOF_STATUS.md` argues, heuristically and not yet checked, that given the
  venue-dependence evidence already logged, adoption rate specifically must be known or well
  estimated, since the escape (an unknown shared rate cancels out for ranking purposes) only
  holds if every venue is affected equally, which the venue-dependence sources contradict. Are
  the tercile boundaries fixed in advance, or defined by the realized headcount distribution,
  which makes the labels data-dependent and collides with several of the frameworks above. Which
  loss counts a mistake: 0-1 per venue, an ordinal distance, or the fraction correct among
  displayed venues, whose denominator is random under zero-censoring. Is the claim uniform over
  headcount configurations, or averaged under the simulator's generating law, which decides
  between the minimax branch and the Bayes branch. Is the venue or the person the independent
  unit, since tensorization in Fano and the `n * KL` step in Le Cam both fail under within-venue
  friend dependence. Is the number of venues fixed or growing, which decides between finite-sample
  and asymptotic statements.
- Five requirements recur across every candidate formalism for a probability indexed by both
  person and venue (`SRC-103` through `SRC-111`, plus `SRC-016` and `SRC-107`), and they are also
  unsettled. The denominator: most need the number of opportunities, meaning venue visits, and
  this project observes posts rather than presences. Replication: crossed random effects and
  occupancy models both need repeated observations within both margins. Conditional independence:
  colocated friends break it in all three of the main families. A shape commitment: every option
  that quantifies heterogeneity fixes its distributional form in advance, so a reported variance
  ratio inherits that choice. The censoring: only `SRC-104` and `SRC-107` model a mechanism by
  which a true zero goes unobserved, and both still assume the unit stays in the sample rather
  than vanishing from the display.
- `SRC-105` deserves separate note. Positive-unlabeled learning's SCAR assumption states that the
  chance a true opportunity appears as a post does not depend on the covariates, which here means
  it does not depend on the venue. Adopting that formalism would assume away the venue-dependence
  question rather than answer it.
- Roughly 35 of the 65 pre-2026-10-10 sources are out of scope for the restated problem and
  nobody has marked which. The three buckets are recorded in
  `AI/PROMPTS/2026-10-09-problem-statement.md`. The 46 sources added on 2026-10-10 were all
  gathered against the restated problem and are not part of that backlog.
- The simulator is not built and no code exists anywhere in the repository.

## Unverified claims or results

- The choice of three display levels rests on cartographic convention about how many classes a
  reader recognises at a glance. No source in this repository supports it and none was found.
- The two-hour window is now a plain owner choice (`DEC-009` extended), not backed by
  `SRC-062`. It had rested on `SRC-062`'s session length of 4.8 hours divided by an unsourced
  number of venues per night, and `SRC-062` measures a whole drinking session, not time at one
  venue, which was thin support regardless.
- `SRC-065` draws on a time-use wave that overlaps COVID restrictions, and nobody has checked
  which years each country collected. A going-out rate measured under restrictions is biased
  down.
- `SRC-060`'s student indicator counts enrolment at institutions in the city, not residence.
  Leuven returns 58,601 students against 104,239 residents, which is how the limitation was
  caught.
- `SRC-060`, `SRC-061` and `SRC-065` were retrieved by Claude Code and the owner has not re-run
  the queries. Each entry carries the exact query used.
- All 29 `CHECKED` sources were read by Claude Code, not by the owner. Each entry names the
  sections read, so any claim drawn from one is traceable, but none has owner verification.
- `SRC-089` is logged `REJECTED` as a caution rather than as a source. That 2025 preprint asserts
  that nightlife venues are underrepresented in check-in datasets and cites `SRC-082` for it, and
  `SRC-082` contains no such measurement. The claim is the one this project would most like to be
  true, so do not cite it as the within-nightlife evidence that is still missing.

## Next actions

1. Settle the four operational choices the owner deferred on 2026-10-11: which study is the
   result, coverage as the result with the algorithm as future work or coverage as the
   precondition; the coverage target, 80 or 90 percent; the co-attendance mechanism, groups drawn
   from C which makes arrivals batch rather than plain Poisson, or independent arrivals pulled
   toward friends; and a rule that consumes G. The first two are one word each. Without the third,
   coverage cannot be computed at all, because clustering reaches coverage only through friends
   arriving together.
2. Settle the two build-gating choices above, then build in this order: the evaluation harness,
   which can be written against the baseline alone, then the simulator, then the owner's
   algorithm, then the comparison. No code exists anywhere in the repository.
3. Decide which of the roughly sixty sources reported on 2026-10-11 get `SRC` entries. Nothing
   from the eight searches is logged in `AI/SOURCES.md` yet.
4. Open Meng (2018) on the effective sample size of a self-selected sample. The question-forms
   agent reports it as the one form needing none of the three unsourced inputs to pose, and it is
   known only from its abstract.
5. Pick a mechanism and shape for how posting probability varies by adopter and by venue
   (`DEC-012` dropped the false independence claim but specifies neither). The candidate
   formalisms discussed (N-mixture with a beta-binomial extension, latent exposure, crossed
   random effects) are all still open.
6. Fix the hour of the evening the problem is posed at.
7. Settle the six framework prerequisites above, then choose a framework and derive the optimal
   rule.
8. Find a source for venue inequality, the one input that still has none.
9. Write `paper/sections/02-literature-review.tex` against the restated problem, using the
   relevant sources rather than all 137.

## Files to open first

- [`drafts/problem-statement-v3.md`](../drafts/problem-statement-v3.md): the problem. Start here.
- [`drafts/problem-statement-v2.md`](../drafts/problem-statement-v2.md): the superseded question,
  kept as the record of what we no longer ask. Its setting prose is still current and version 3
  carries it verbatim.
- [`AI/DECISIONS.md`](DECISIONS.md): `DEC-007` for every settled value, `DEC-008` for what was
  deleted and why, `DEC-005` for the rule keeping the baseline out until the end.
- [`AI/SOURCES.md`](SOURCES.md): 137 logged sources, 45 checked, none read by the owner.
- [`AI/PROMPTS/2026-10-10-assumption-2-literature.md`](PROMPTS/2026-10-10-assumption-2-literature.md):
  what the 2026-10-10 searches found, what they failed to find, and what was left undecided.

## Related records

- DEC-001 through DEC-012 in `AI/DECISIONS.md`.
- ATT-001 in `AI/ATTEMPTS.md`.
- `AI/PROMPTS/2026-10-08-project-scaffolding.md`,
  `AI/PROMPTS/2026-10-09-literature-search-topics.md`,
  `AI/PROMPTS/2026-10-09-map-design-decisions.md`,
  `AI/PROMPTS/2026-10-09-problem-statement.md`,
  `AI/PROMPTS/2026-10-10-assumption-2-literature.md`, and
  `AI/PROMPTS/2026-10-11-clustered-adoption-literature.md`, and
  `AI/PROMPTS/2026-10-11-question-relocation-prompts.md`, and
  `AI/PROMPTS/2026-10-11-question-relocation-results.md`.
