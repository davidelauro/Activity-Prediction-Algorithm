# AI session: project scaffolding

- **Date:** 2026-10-08
- **AI tool and interface:** Claude Code (desktop app)
- **Visible model name, if shown:** Claude Sonnet 5
- **Branch:** master
- **Purpose:** review the existing AI-built baseline model. Adopt an AI-audit workflow for this
  solo project, adapted from the TU Delft WI4465 Random Graphs student project template.
- **Files or sources provided to the AI:** `instructions-setup (1).pdf` (the course setup
  guide), `student-repository-template (1).zip` (the actual course template, containing
  `AGENTS.md`, `CLAUDE.md`, `.gitignore`, `instructions-workflow.md`, and the full `AI/` module
  set).

## Initial prompt

The prompts below are quoted verbatim, in their original language, per this file's own rule
that a prompt record preserves original wording.

> vedi il contenuto del folder? [...] check

> @"/Users/dada/Downloads/instructions-setup (1).pdf" l'algoritmo corrente è stato fatto
> interamente con l'AI. l'obiettivo del progetto nel folder è a costruire un modello di
> previsione, testarlo su una mappa con attività simulata (per esempio simulando un flusso di
> persone con distribuzione poissoniana in una mappa di locali finta), e outperformare il
> modello creato dall'AI alla stra-grande

## Substantive follow-up prompts

> le istruzioni che ti ho linkato sono da prendere e adattare a questo progetto personale. mi
> interessa avere lo stesso tipo di workflow suggerito dalla professoressa di random graph per
> questo mio progetto

> il nuovo modello lo faccio io

> @"/Users/dada/Downloads/student-repository-template (1).zip" [the real course template,
> provided mid-turn after the AI had started reconstructing the files from the PDF alone]

> U, Understandable information load. [...] S, Strong order. [...] P, Precise. [...] Ar,
> Appropriate register. [...] C, Concise. [...] Scope: applies to new prose [...] and no em
> dash, ever, in any text. This needs to be added to the rules the AI follows when writing
> inside the folder.

> now rewrite all files according to this rule, and from now on let's write in english only

## What the AI contributed

- Reviewed `sql/activity_score.sql` and `MODEL.md` for logic and syntax issues. The review found
  none.
- Drafted `AGENTS.md` and the `AI/` files first from the PDF description alone, then discarded
  that draft once the real template zip arrived. The AI rebuilt every file from the actual
  template content, adapted for a solo author. The adaptation dropped group-specific mechanics:
  teammate pull-request review, weekly course checkpoint submission, and GitHub
  Desktop/Codex-specific instructions.
- Added project-specific framing to `AGENTS.md` and `AI/PROJECT.md`: the baseline-to-beat
  relationship between `sql/activity_score.sql` and the new model, the ownership split (the
  owner designs the model, AI helps with everything around it), and why a synthetic simulator
  makes "outperform the baseline by a wide margin" checkable. The simulator sidesteps the
  baseline's own acknowledged ρ_v identifiability limit.
- Logged the existing baseline model retroactively as `ATT-001` in `AI/ATTEMPTS.md`, and logged
  the workflow adoption itself as `DEC-001` in `AI/DECISIONS.md`.
- Copied `.gitignore` from the real template.
- Added a "Prose style (USPArC)" section to `AGENTS.md`, transcribing and translating the
  five-rule style guide the owner provided: information load, sentence order, precision,
  register, and concision, plus an absolute no-em-dash rule, with the stated scope exclusion for
  `schedule/`, `progress/`, `dashboard.md`, and other tabular or terse content. Logged as
  `DEC-002`.
- Rewrote every existing Markdown file in the repository (`AGENTS.md` and every file under
  `AI/`) to apply the USPArC rules and remove every em dash. Switched the chat language to
  English, per the owner's instruction, going forward.

## My decision

- **Outcome:** still under review. The files are created but not yet committed.
- **What I decided or changed:** chose to adapt the real course template instead of the AI's
  PDF-only reconstruction. Confirmed that the model-design work stays owner-led. Set a fixed
  prose style for the repository and switched the working language to English.

## Verification

- Cross-checked every adapted `AI/*.md` file against the actual unzipped template content
  (`student-repository-template (1).zip`), instead of relying on the AI's memory of the PDF.
- Grepped every Markdown and SQL file in the repository for the em dash character to confirm the
  rewrite removed them all.

## Resulting work

- **Related record IDs:** DEC-001, DEC-002, ATT-001
- **Files changed:** `AGENTS.md`, `CLAUDE.md`, `.gitignore`, `AI/PROJECT.md`, `AI/STATUS.md`,
  `AI/DECISIONS.md`, `AI/ATTEMPTS.md`, `AI/SOURCES.md`, `AI/AI_USE_SUMMARY.md`,
  `AI/EXPERIMENTS.md`, `AI/PROOF_STATUS.md`, `AI/PROMPTS/README.md`, `AI/PROMPTS/TEMPLATE.md`,
  this file, plus a style pass over `README.md`, `MODEL.md`, and `sql/activity_score.sql`.
- **Related earlier commit or pull request, if applicable:** builds on `d7de60b` (the baseline
  model commit).
- **Remaining uncertainty:** none regarding the scaffolding or the style pass. The project's
  actual research content (the simulator design, the new model) has not started.

## Later corrections or addenda

**2026-10-08, later the same day.** This session's draft of `AGENTS.md` and `AI/PROJECT.md`
stated that the new model would build on "the random-graphs toolkit" and be "grounded in
random-graph and point-process theory." The owner flagged this as an unwarranted assumption: the
AI-audit workflow came from a random-graphs course, but that is the source of the workflow, not
a decision about this project's method. A follow-up session rewrote every instance in
`AGENTS.md`, `AI/PROJECT.md`, `AI/PROOF_STATUS.md`, `AI/SOURCES.md`, and
`paper/sections/02-literature-review.tex` to state plainly that the mathematical framework is
not yet chosen, while leaving the Poisson arrival process for the simulator in place, since the
owner specified that detail directly, in the first prompt of this project, not this session.
