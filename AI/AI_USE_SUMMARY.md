# Final AI-use summary

Complete this file near the end of the project. It is a concise map of substantial AI use, not a
copy of every conversation. The detailed evidence stays in `PROMPTS/`, in the git history, and
in the other `AI/` records.

## Tools used

| Tool and interface | Visible model, if known | Main uses |
|---|---|---|
| Claude Code (desktop app) | Claude Sonnet 5 | baseline review, project scaffolding |

## Substantial contributions

For each category, write "none," or describe the contribution and link the most important
prompt logs, commits, or pull requests.

- **Planning and project design:** an AI designed the baseline model
  (`sql/activity_score.sql`, `MODEL.md`) entirely, before this audit workflow existed. See
  `ATT-001`.
- **Mathematical arguments or completed proofs:** none yet.
- **Code, simulations, or data processing:** none yet.
- **Literature or dataset search:** none yet.
- **Figures, tables, or interpretation:** none yet.
- **Report drafting or editing:** none yet.
- **Criticism, checking, or debugging:** on 2026-10-08, an AI sanity-checked the baseline SQL
  for logic and syntax bugs. The check found none.

## What I rejected or changed

Describe important AI suggestions that I rejected, corrected, or substantially modified.

- On 2026-10-08, I caught the scaffolding draft assuming the new model would use random graphs
  and point processes, carried over from the name of the course the AI-audit workflow came
  from, not from any decision I made. I had the AI rewrite every instance across `AGENTS.md`,
  `AI/PROJECT.md`, `AI/PROOF_STATUS.md`, `AI/SOURCES.md`, and the literature review stub to state
  that the mathematical framework is still open. See the addendum in
  `AI/PROMPTS/2026-10-08-project-scaffolding.md`.

## How I checked the work

Summarize proof checks, source verification, exact small examples, reruns, independent
calculations, or other checks.

-

## Remaining limitations

-

## Reflection

In a short paragraph, explain where AI helped, where it was unreliable, and what I learned or
decided independently.
