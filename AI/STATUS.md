# Current status and handoff

This file is the short handoff to the next session. Refresh it at the end of each substantial
work session. Replace stale details instead of letting this file become a diary.

- **Last updated:** 2026-10-08
- **Updated by:** Claude Code (scaffolding session)
- **Current branch:** master
- **Current stage:** planning

## Done and checked

- Baseline review: a session read `sql/activity_score.sql` and `MODEL.md` and sanity-checked
  them. The session found no syntax or logic bugs on inspection. The session noted and
  understood the structural limit around ρ_v.
- AI-audit workflow scaffolding: a session adapted the TU Delft WI4465 student project template
  into a solo-project version. The scaffolding covers `AGENTS.md`, `CLAUDE.md`, this `AI/`
  directory, and `.gitignore`.

## In progress

- Nothing yet. The scaffolding just landed and is not committed.

## Blockers or open questions

- The owner leads the model design, and that work has not started. See `AI/PROJECT.md`, under
  "Chosen extension: to be decided."
- The simulator design, covering the map generator, the arrival process, and the synthetic
  social graph, has not started.
- The comparison metric against the baseline is not yet defined. It needs definition before any
  model gets built, to keep the eventual comparison honest.

## Unverified claims or results

- None yet.

## Next three actions

1. Define the synthetic world: the venue map generator, the Poisson arrival process parameters,
   and the synthetic friendship graph model. This is the owner's call.
2. Pin down the comparison metric and the success criterion against the baseline, in writing,
   before building the new model.
3. Start designing the new model. The owner leads this work; AI assists only on request, per
   `AGENTS.md`.

## Files to open first

- [`MODEL.md`](../MODEL.md): the baseline's reasoning, to see what it handles and what it does
  not.
- [`sql/activity_score.sql`](../sql/activity_score.sql): the baseline implementation.
- [`AI/PROJECT.md`](PROJECT.md): the project scope and conventions.

## Related records

- None yet.
