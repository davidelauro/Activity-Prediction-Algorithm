# Current status and handoff

This file is the short handoff to the next session. Refresh it at the end of each substantial
work session. Replace stale details instead of letting this file become a diary.

- **Last updated:** 2026-10-09
- **Updated by:** Claude Code
- **Current branch:** literature/search-topics, pushed through `46c5a5b`.
- **Current stage:** planning

## Done and checked

- Baseline review: `sql/activity_score.sql` and `MODEL.md` read and sanity-checked. No syntax
  or logic bugs found. The structural limit around ρ_v is understood.
- AI-audit workflow scaffolding, on `master`/`main` as `0f090f0`, and a later correction, on
  `TheProblem` as `8e34e82`, removing every claim that the new model is grounded in random
  graphs or point processes; the mathematical framework stays undecided.
- Paper scaffolding on `TheProblem`: `paper/main.tex` with one file per section, builds clean
  with `pdflatex` and `bibtex` at their exact binary paths in `.vscode/settings.json`, since
  this machine's TeX install is invisible to VS Code's own `PATH`. `paper/references.bib` fixed
  for a BibTeX parsing bug, an at-sign character anywhere in the file, even in a comment,
  starts entry parsing.
- `paper/sections/03-problem-statement.tex` stays an owner-authored stub, by choice; the actual
  problem statement, rewritten in the USPArC style and since corrected (the independence
  assumption now excludes friends), lives in `drafts/problem-statement-draft.md` instead, not
  placed in the paper yet.
- A first literature search, run externally against three research questions, returned about
  90 candidates, trimmed to 8 priority papers, logged in `AI/SOURCES.md` as `SRC-001` through
  `SRC-008`. Four are downloaded to `paper/literature/` (gitignored, not redistributed through
  git); three are confirmed open access but blocked by bot protection for automated download,
  need grabbing by hand; one is confirmed closed access.
- `DEC-003` logged: whether to adopt any part of an externally proposed model stays the owner's
  decision, not an assistant's.
- A second, paragraph-by-paragraph pass through the problem statement, owner-led, identified 13
  candidate search topics across all three paragraphs, logged in
  `drafts/literature-search-topics.md`. One unformalized open item came out of this pass: the
  priority tiebreaker among venues at the same heat level.
- `drafts/search-prompts.md`: ten search prompts drawn from the 13 logged topics, each
  independent. Run 2026-10-09 in a fresh Opus chat, deliberately not through this project's own
  Agent tool, so the search had no exposure to anything already discussed in this project's main
  session; that mattered specifically for the El Farol guess, a claim that leaked from
  background knowledge into the project only because of context already present in the
  conversation that produced it.
- Results read in full from the Opus chat's Claude Docs page and saved to
  `drafts/literature-review-results.md`. Verdict on the El Farol guess: it holds, but only for
  the crowd-avoider half of the problem statement's described behaviour; the crowd-seeker half
  has its own source instead (Simon 1954, Leibenstein 1950). The search's own self-correction
  removed Arthur's original 1994 El Farol paper as not peer-reviewed, keeping two peer-reviewed
  papers that carry the same claims instead. A genuine gap surfaced too: no paper models
  correlated detection for human friends specifically, only for animal pairs and groups.
- All 43 sources from this second search logged in `AI/SOURCES.md` as `SRC-009` through
  `SRC-051` (`SRC-051` is `REJECTED`, the Arthur 1994 paper, closing the loop on the earlier
  unverified guess). Every entry stays `LEAD`: the search read many of them in full, but the
  owner has not personally checked any yet. Full prose detail for all of them lives in
  `drafts/literature-review-results.md`; the `AI/SOURCES.md` entries are the citation record,
  not a duplicate of that prose.
- Scope correction: the goal is not estimating general attendance, it is estimating presence of
  the app's own target community, an unknown demographic (young adults who want to socialize
  with friends), not a closed, known population. `drafts/problem-statement-draft.md` reworded
  throughout to say so. This also resolves part of the baseline's own ρ_v identifiability
  problem from `MODEL.md`: ρ_v now means "probability a community member who is present checks
  in," a narrower, more answerable question than "probability any real attendee uses this app."
- Started naming parameters for venue activity beyond headcount and group size. Momentum was
  proposed, confirmed, then retracted by the owner without a stated reason; it is not on the
  list. A search on what makes a place feel socially alive (run via a fresh subagent, independent
  of this session, same citation discipline) returned about 38 sources, saved in full to
  `drafts/social-aliveness-search.md`. Filtered to what this project can actually measure from
  check-ins and the social graph alone (no audio, survey, or venue-characteristic data exists in
  scope): 8 sources kept, logged as `SRC-052` through `SRC-059`; about 30 discarded, not
  individually logged, reasons summarized in `AI/SOURCES.md` after `SRC-059`. The two load-bearing
  findings: human crowding (measurable, headcount) and spatial crowding (not measurable, no
  capacity data) have opposite effects in the literature, and raw headcount was only a weak
  predictor of felt social connection in one validated study, a caution against leaning on it as
  the primary signal. Hristova et al. (`SRC-056`) gives four computable familiarity/turnover
  metrics directly usable on this project's own data, the most actionable single source found
  across both searches.

## In progress

- Nothing active. The problem statement is finished and lives in
  `drafts/problem-statement-v2.md`. Two values inside it stay open, both small.

## Settled since the last major update

- `DEC-007`: the problem is restated around a three-level display and an adoption threshold, and
  it supersedes `DEC-006` choices 1 to 7. The statement lives in
  `drafts/problem-statement-v2.md`. Settled inside it: three levels labelled quiet, busy and
  packed shown as yellow, orange and red; a venue with no check-ins does not appear on the map;
  the two boundaries sit at quantiles rather than absolute headcounts; a two-hour window; an 80
  percent match rate target and an 80 percent coverage target; adopter and adoption defined;
  presence enforced by the app so the posting assumptions number three. The research question
  asks the smallest adoption at which both targets hold, and asks it of every possible procedure
  rather than of one.
- The output is a level, not a headcount. An arithmetic check during the session showed that no
  adoption level yields a precise per-venue headcount for a community of 30,000 across 100
  venues, while a coarse level stays reachable.
- The problem can no longer be answered by simulation alone. A claim about every procedure needs
  the optimal rule derived first, and simulation then evaluates that rule. The result holds
  relative to the assumed model and prior, not universally.

- `DEC-004`: venue activity has three parameters, headcount, groups, and familiarity.
  Familiarity is a known covariate from check-in history, not a predicted quantity. Logged in
  `AI/DECISIONS.md` and `AI/PROJECT.md`.
- `DEC-005`: the baseline informs no part of the simulator's design. It enters only at
  comparison time. This rule withdrew an assistant's earlier argument that the simulated truth
  should avoid mechanisms the baseline cannot represent, since designing around the baseline
  would rig the comparison in the baseline's favour.
- `DEC-006`: eight choices fix the map. Community members only. An abstract adjacency graph with
  no coordinates. Venues clustered into districts. Substitution between nearby venues present in
  the ground truth. Every venue existing from the first timestep. One fixed map. Intrinsic draw
  from a distribution. Scale of about 30,000 community members and 75 to 125 venues.
- Community size equals the student population, an owner decision. `SRC-060` and `SRC-061` carry
  the data: eleven European university cities give a median student enrolment of 33,262 and a
  median resident population aged 20 to 29 of 27,731, and three of them returned 121, 122, and
  75 nightlife venues.

## Blockers or open questions

- The owner leads the model design; not started. See `AI/PROJECT.md`, "Chosen extension: to be
  decided."
- The simulator is not built, and nothing in the repository is code. `DEC-007` stripped the map
  structure out of the problem, so `DEC-006` choices 1 to 7 no longer describe the current work.
- Two values inside `DEC-007` stay open. The quantile split is unchosen, and a skewed split such
  as 60, 30, 10 would let a procedure that calls every venue quiet score 60 percent, which
  weakens the 80 percent target. The hour of the evening is unfixed, and it feeds both the
  window's justification and the turnout figure.
- Two quantities the answer depends on have no source at all: how unequally members spread
  across venues, which the owner's own analysis ranks above adoption in importance, and how
  often an adopter posts.
- The optimal rule has not been derived. Without it there is no limit to compare against and
  nothing for a simulation to evaluate.
- `DEC-006` leaves the intrinsic-draw distribution unnamed, so the map cannot be built yet.
  Three implementation details also stay open: the district count and venues per district,
  whether a graph edge is binary or weighted, and which busyness a substituting person reacts
  to, the real crowd or the displayed heat map.
- Two map questions are deferred behind a prior decision about how the simulator constructs
  the subset of people who hold the app: whether displayed heat changes where people go, and
  whether check-in probability is one global number or one per venue. The owner deferred both
  on the ground that the literature must settle how check-ins get modeled first.
- The comparison metric against the baseline not yet defined.
- The priority tiebreaker rule is flagged but not formalized: open question is whether the
  friend-presence check is personalized per viewer or global across all viewers.
- Whether to trim the 51 logged sources from the first two searches down to a smaller working
  set is explicitly deferred; the owner said the reason for any trim needs deciding later, not
  now. The social-aliveness search's sources were trimmed on a different, explicit basis
  (measurability), so that one is not part of this open question.
- The parameter set for venue activity is still open: headcount and groups are settled, momentum
  was proposed and retracted, nothing from the social-aliveness search has been confirmed as an
  actual parameter yet, only identified as measurable.

## Unverified claims or results

- SRC-001 through SRC-051 in `AI/SOURCES.md` are all still `LEAD` or `REJECTED`; none read and
  personally checked by the owner yet, regardless of how thoroughly the search itself read them.
- The choice of three levels rests on cartographic convention about how many classes a reader
  recognises at a glance. No source in this repository supports it, and none was found.
- `SRC-062` was read directly from the paper's results table, so its duration figures are solid,
  but they measure a whole drinking session rather than time at one venue. The two-hour window
  therefore rests on that session length divided by an unsourced number of venues per night.
  `SRC-063`, `SRC-064` and `SRC-065` are leads with verified metadata and unread full text.
- `SRC-065` carries a serious limitation recorded in its own entry: the 2020 time-use wave
  overlaps COVID restrictions and nobody has checked which years each country collected.
- `SRC-060` and `SRC-061` were retrieved by Claude Code on 2026-10-09 through the Eurostat and
  Overpass APIs, and the owner has not re-run either query. Both entries carry the exact query
  used. `SRC-060` has one load-bearing limitation: the Eurostat student indicator counts
  enrolment at institutions in the city, not residence.
- Several entries carry their own internal caveats: unconfirmed DOIs or page ranges, content
  recalled from the search's memory rather than reread, or extensions worked out during the
  search rather than quoted from the source (most notably the ordinal-category derivation under
  SRC-032, Gneiting 2011).

## Next actions

1. Choose the quantile split, terciles or a skew, since it fixes the trivial baseline the 80
   percent target is measured against.
2. Fix the hour of the evening the problem is posed at.
3. Find sources for the two unsourced quantities: venue inequality and how often an adopter
   posts.
4. Derive the optimal rule, which is the step that makes the research question answerable at
   all.
5. Decide, with a stated reason, whether and how to trim the logged sources before writing the
   literature review narrative in `paper/sections/02-literature-review.tex`.
6. Grab the three bot-blocked open-access papers from the first search (Clement et al.,
   Timokhin et al., Zhuang and Mateu) by hand in a browser; links are in `AI/SOURCES.md`.

## Files to open first

- [`drafts/problem-statement-v2.md`](../drafts/problem-statement-v2.md): the current problem
  statement. Start here.
- [`drafts/problem-statement-draft.md`](../drafts/problem-statement-draft.md): the earlier
  statement, superseded in substance by v2 and kept as the record of where it came from.
- [`drafts/social-aliveness-search.md`](../drafts/social-aliveness-search.md): the parameter
  search, full results.
- [`AI/SOURCES.md`](SOURCES.md): 65 logged sources, one checked and the rest leads or rejected.
- [`drafts/literature-review-results.md`](../drafts/literature-review-results.md): the first
  search's full prose findings, organized by question.
- [`drafts/literature-search-topics.md`](../drafts/literature-search-topics.md): the 13
  candidate search topics that drove the first search.

## Related records

- DEC-001 through DEC-007 in `AI/DECISIONS.md`.
- ATT-001 in `AI/ATTEMPTS.md`.
- `AI/PROMPTS/2026-10-08-project-scaffolding.md`,
  `AI/PROMPTS/2026-10-09-literature-search-topics.md`, and
  `AI/PROMPTS/2026-10-09-map-design-decisions.md`, and
  `AI/PROMPTS/2026-10-09-problem-statement.md`.
