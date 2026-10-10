# Current status and handoff

This file is the short handoff to the next session. Refresh it at the end of each substantial
work session. Replace stale details instead of letting this file become a diary.

- **Last updated:** 2026-10-10
- **Updated by:** Claude Code
- **Current branch:** problem/adoption-threshold, branched from `literature/search-topics` at
  `23a4629`
- **Current stage:** planning

## Where the project stands

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
  `CHECKED`. `AI/SOURCES.md` now holds 111 sources: 29 `CHECKED`, 80 `LEAD`, 2 `REJECTED`. Seven
  background agents ran in three waves, covering per-adopter posting probability, colocated-friend
  dependency, frameworks for a bound over every procedure, observational venue dependence,
  check-in motivation, the within-person across-venue distribution, and candidate formalisms for a
  probability indexed by both person and venue. Every `CHECKED` entry records which sections were
  read. The owner has personally read none of the 111. See
  `AI/PROMPTS/2026-10-10-assumption-2-literature.md`.
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

## In progress

- Nothing active.

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
  been. Three search prompts drafted, none run: `drafts/search-prompt-clustered-adoption-threshold.md`
  (does clustering shift a diffusion or coverage threshold, drawing on network epidemiology and
  percolation theory), `drafts/search-prompt-app-adoption-network-structure.md` (how clustered
  is real app adoption, empirically), and `drafts/search-prompt-cluster-sampling-variance.md`
  (the survey-methodology design-effect formula, a more tractable statistical framing of the
  same question).
- The venues actually shown (those with at least one check-in) do not split into exact terciles,
  because venues with zero check-ins, disproportionately the true-quiet ones, get hidden before
  the split is read off. How much this shifts the realized trivial baseline, and how that shift
  moves with adoption rate, is open. See `DEC-010`.
- The optimal rule is not derived. Until it is, there is no limit to compare against and nothing
  for a simulation to evaluate. This is the step that makes the research question answerable.
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

1. Pick a mechanism and shape for how posting probability varies by adopter and by venue
   (`DEC-012` dropped the false independence claim but specifies neither). The candidate
   formalisms discussed (N-mixture with a beta-binomial extension, latent exposure, crossed
   random effects) are all still open.
2. Fix the hour of the evening the problem is posed at.
3. Settle the six framework prerequisites above, then choose a framework and derive the optimal
   rule.
4. Find a source for venue inequality, the one input that still has none.
5. Write `paper/sections/02-literature-review.tex` against the restated problem, using the
   relevant sources rather than all 112.

## Files to open first

- [`drafts/problem-statement-v2.md`](../drafts/problem-statement-v2.md): the problem. Start here.
- [`AI/DECISIONS.md`](DECISIONS.md): `DEC-007` for every settled value, `DEC-008` for what was
  deleted and why, `DEC-005` for the rule keeping the baseline out until the end.
- [`AI/SOURCES.md`](SOURCES.md): 111 logged sources, 29 checked, none read by the owner.
- [`AI/PROMPTS/2026-10-10-assumption-2-literature.md`](PROMPTS/2026-10-10-assumption-2-literature.md):
  what the 2026-10-10 searches found, what they failed to find, and what was left undecided.

## Related records

- DEC-001 through DEC-008 in `AI/DECISIONS.md`.
- ATT-001 in `AI/ATTEMPTS.md`.
- `AI/PROMPTS/2026-10-08-project-scaffolding.md`,
  `AI/PROMPTS/2026-10-09-literature-search-topics.md`,
  `AI/PROMPTS/2026-10-09-map-design-decisions.md`,
  `AI/PROMPTS/2026-10-09-problem-statement.md`, and
  `AI/PROMPTS/2026-10-10-assumption-2-literature.md`.
