# Current status and handoff

This file is the short handoff to the next session. Refresh it at the end of each substantial
work session. Replace stale details instead of letting this file become a diary.

- **Last updated:** 2026-10-08
- **Updated by:** Claude Code (scaffolding session)
- **Current branch:** TheProblem
- **Current stage:** planning

## Done and checked

- Baseline review: a session read `sql/activity_score.sql` and `MODEL.md` and sanity-checked
  them. The session found no syntax or logic bugs on inspection. The session noted and
  understood the structural limit around ρ_v.
- AI-audit workflow scaffolding: a session adapted the TU Delft WI4465 student project template
  into a solo-project version, committed on `master` as `0f090f0`.
- Paper scaffolding on branch `TheProblem`: a LaTeX skeleton at `paper/main.tex`, split into one
  file per section under `paper/sections/`, with `paper/references.bib` and a
  `.vscode/settings.json` recipe that builds with `pdflatex` and `bibtex` directly, since this
  machine's TeX distribution has no `latexmk`. The build was tested once and produced a clean
  PDF; the test artifacts were removed afterward. Every section file past the literature review
  is an empty stub, owner-authored, not yet written.

## In progress

- The literature review and problem statement sections (`paper/sections/02-literature-review.tex`
  and `03-problem-statement.tex`) are open for the owner to write, starting from a literature
  review of population models.

## Blockers or open questions

- The owner leads the model design, and that work has not started. See `AI/PROJECT.md`, under
  "Chosen extension: to be decided."
- The simulator design, covering the map generator, the arrival process, and the synthetic
  social graph, has not started.
- The comparison metric against the baseline is not yet defined. It needs definition before any
  model gets built, to keep the eventual comparison honest.
- The paper scaffolding is not yet committed on `TheProblem`.

## Unverified claims or results

- None yet.

## Next three actions

1. Write the literature review on population models and the problem statement in `paper/`,
   owner-led.
2. Pin down the comparison metric and the success criterion against the baseline, in writing,
   before building the new model.
3. Start designing the new model. The owner leads this work; AI assists only on request, per
   `AGENTS.md`.

## Files to open first

- [`paper/sections/02-literature-review.tex`](../paper/sections/02-literature-review.tex) and
  [`paper/sections/03-problem-statement.tex`](../paper/sections/03-problem-statement.tex): the
  two sections open for writing on `TheProblem`.
- [`MODEL.md`](../MODEL.md): the baseline's reasoning, to see what it handles and what it does
  not.
- [`AI/PROJECT.md`](PROJECT.md): the project scope and conventions.

## Related records

- None yet.
