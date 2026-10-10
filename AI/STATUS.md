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
  session added `SRC-062` through `SRC-065`. Only `SRC-062` is `CHECKED`. Everything else is
  `LEAD` or `REJECTED`, and the owner has personally read none of them.
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

## In progress

- Nothing active.

## Blockers or open questions

- The hour of the evening is unfixed, and it feeds both the window's justification and the
  turnout figure.
- Two quantities the answer depends on have no source: how unequally members spread across
  venues, which the owner's own analysis ranks above adoption rate in importance, and how often
  an adopter posts.
- The venues actually shown (those with at least one check-in) do not split into exact terciles,
  because venues with zero check-ins, disproportionately the true-quiet ones, get hidden before
  the split is read off. How much this shifts the realized trivial baseline, and how that shift
  moves with adoption rate, is open. See `DEC-010`.
- The optimal rule is not derived. Until it is, there is no limit to compare against and nothing
  for a simulation to evaluate. This is the step that makes the research question answerable.
- Assumption 2's posting-probability heterogeneity (varies per adopter, mechanism unspecified)
  needs a literature pass, scoped to the model, not the display, so `DEC-009` does not apply.
  Search prompt drafted in `drafts/search-prompt-posting-probability.md`. A prior unverified
  search flagged a real translation gap: posting-volume heavy-tailedness is documented, but
  that is lifetime post count, not a bounded per-visit probability.
- Assumption 3's colocated-friend dependency (friends at the same venue and time do not post
  independently) has no stated mechanism either. Same scope as Assumption 2, same reason
  `DEC-009` does not apply. Search prompt drafted in
  `drafts/search-prompt-friend-colocation.md`. The closest lead already found, unverified, is a
  Foursquare colocation study (personality homophily in checkins).
- Roughly 35 of the 65 logged sources are out of scope for the restated problem and nobody has
  marked which. The three buckets are recorded in
  `AI/PROMPTS/2026-10-09-problem-statement.md`.
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

## Next actions

1. Fix the hour of the evening the problem is posed at.
2. Derive the optimal rule.
3. Find sources for venue inequality and for how often an adopter posts.
4. Write `paper/sections/02-literature-review.tex` against the restated problem, using the
   roughly 25 relevant sources rather than all 65.

## Files to open first

- [`drafts/problem-statement-v2.md`](../drafts/problem-statement-v2.md): the problem. Start here.
- [`AI/DECISIONS.md`](DECISIONS.md): `DEC-007` for every settled value, `DEC-008` for what was
  deleted and why, `DEC-005` for the rule keeping the baseline out until the end.
- [`AI/SOURCES.md`](SOURCES.md): 65 logged sources, one checked.

## Related records

- DEC-001 through DEC-008 in `AI/DECISIONS.md`.
- ATT-001 in `AI/ATTEMPTS.md`.
- `AI/PROMPTS/2026-10-08-project-scaffolding.md`,
  `AI/PROMPTS/2026-10-09-literature-search-topics.md`,
  `AI/PROMPTS/2026-10-09-map-design-decisions.md`, and
  `AI/PROMPTS/2026-10-09-problem-statement.md`.
