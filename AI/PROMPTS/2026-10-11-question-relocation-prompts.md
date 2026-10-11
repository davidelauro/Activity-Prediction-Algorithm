# AI session: prompts for relocating the research question

- **Date:** 2026-10-11
- **AI tool and interface:** Claude Code in the Claude desktop app
- **Visible model name, if shown:** Opus 5
- **Branch:** problem/adoption-threshold
- **Purpose:** draft prompts for finding research questions that the problem's setting and the
  137 logged sources support better than the current adoption-threshold question does.
- **Files or sources provided to the AI:** `AGENTS.md`, `AI/PROJECT.md`, `AI/STATUS.md`,
  `AI/SOURCES.md` quick index, `drafts/problem-statement-v2.md`,
  `paper/sections/03-problem-statement.tex`, and the six existing
  `drafts/search-prompt-*.md` files as the format precedent.

## Initial prompt

> pull the problem in the chat

## Substantive follow-up prompts

> extract the setting of the problem

> okay, now create a prompts for finding new problems/research questions having the current
> found literature in mind. is the scope of the prompts clear to you?

The owner then answered three scoping questions. The answers set the direction of the whole
session, so they are recorded exactly. First, on what the prompts should hunt for: "research
questions that the setting and the found literature supports better than the current adoption
threshold question does." Second, on which part of the source record counts as the literature we
hold: the 45 `CHECKED` sources, with the relevant `LEAD` opened before any claim that a question
is unanswered. Third, on whether the agents may search outward for sources we do not have: yes,
searching is part of the job.

> commit and push

## What the AI contributed

Claude Code first separated the setting from the question. The setting means every object,
assumption and observation rule in `drafts/problem-statement-v2.md` except the paragraph
beginning "Our question is". That separation is the hinge of the session, because the owner's
instruction holds the setting fixed and moves only the question. The extraction was reported in
chat and is not written to a file, so the prompts refer to the problem statement and name the
excluded paragraph instead.

Claude Code raised two risks before writing anything. One, a prompt that asks an agent to
generate research questions runs at the ownership boundary `AGENTS.md` draws, so every prompt
forbids recommending a direction and requires evidence for each candidate. Two, 89 of the 137
logged sources are unread and about 35 of the first 65 are out of scope and unmarked, so a gap
found over unread leads can be a gap in our reading. `SRC-132` is the standing example.

Claude Code then wrote seven prompts in `drafts/`, under a new `question-prompt-` prefix marking
them as a different kind of artifact from the `search-prompt-` files. Each holds the setting
fixed, names one candidate relocation of the question, cites the logged sources bearing on it,
and ends with the same test: state whether the candidate is better supported than the
adoption-threshold question, and say so plainly if it is not.

- `question-prompt-identifiability.md`. Which functionals of tonight's occupancy are recoverable
  at all. Grounded in the 2026-10-11 finding that `SRC-119`'s threshold analogy does not
  transfer, which leaves the existence half of the current question without a formalism.
- `question-prompt-coverage-detection.md`. What guarantees that every busy-or-packed venue emits
  one check-in. Grounded in coverage carrying no procedure quantifier, so the six framework
  prerequisites do not bind it.
- `question-prompt-ranking-recovery.md`. How much signal recovers tonight's tercile partition or
  its top-k venues. Grounded in the target being a rank and in `SRC-072` already supplying an
  every-procedure quantifier in that geometry.
- `question-prompt-censored-boundaries.md`. What hiding zero-check-in venues does to a quantile
  read off the survivors. Grounded in `DEC-010` leaving the realized trivial baseline open.
- `question-prompt-clustered-reach.md`. Which venues a clustered adopter set reaches at all.
  Grounded in `SRC-120` through `SRC-122` disagreeing on sign, which blocks a critical-rate
  claim, and in `SRC-123` measuring reach instead.
- `question-prompt-display-decision.md`. How many levels and which boundary rule serve a reader.
  The only prompt treating part of the setting as open, because the level count has no source.
- `question-prompt-question-forms.md`. What questions this observation structure usually carries.
  The open channel, written because the other six are AI-chosen directions.

Claude Code also reported that the partition itself is its own, that running any one prompt
implies the direction was considered, and that it would run identifiability, coverage-detection
and question-forms first on grounds of verification cost rather than merit.

## My decision

- **Outcome:** still under review
- **What I decided or changed:** nothing in the model, nothing in the problem statement, and no
  change to the research question. `DEC-007` stands and `AI/PROJECT.md`'s "Chosen extension"
  slot stays open. This commit adds seven unrun prompts. The owner asked for them to be
  committed and pushed before deciding which of the seven survive.

## Verification

- No prompt has been run. Nothing in this commit reports a literature finding, so nothing in it
  needs source verification.
- Every claim a prompt makes about an existing source was checked against `AI/SOURCES.md` and
  `AI/STATUS.md` before the commit, including each cited source's `CHECKED` or `LEAD` status.
- One claim was corrected during drafting. A draft of `question-prompt-question-forms.md` said
  that `SRC-002`'s dataset records one check-in per drink, which matches the setting's own
  convention. The `SRC-002` entry does not state that, so the sentence was replaced with what
  the entry does support, that the record calls it the same data shape the baseline assumes. The
  stronger claim is an inference about the Untappd app rather than a logged fact.
- The files were checked for em dashes, of which they contain none, and wrapped under 100
  columns.
- Not verified: whether each candidate question is in fact better supported than the current
  one. That is the question the prompts exist to answer, and no prompt has been run.

## Resulting work

- **Related record IDs:** no new `SRC`, `DEC`, `ATT`, `EXP` or `PRF` entry. The prompts bear on
  `DEC-007`, on `DEC-010`, on `DEC-012`, on `PRF-001`, and on the open framework question in
  `AI/STATUS.md`.
- **Files changed:** seven new files under `drafts/`, `AI/STATUS.md`, and this record.
- **Related earlier commit or pull request, if applicable:** the six `search-prompt-*.md` files
  this format follows were drafted in `4e3afe9` and `3f2d0a3`. The literature the prompts work
  over was logged in `f0f78c3` and the two rounds before it.
- **Remaining uncertainty:** the partition into seven candidates is the AI's, so a better-posed
  question outside all seven stays possible, and `question-prompt-question-forms.md` is the only
  channel for it. Whether any candidate beats the current question is unknown and untested.
  Whether the project should relocate its question at all is undecided.

## Later corrections or addenda

Do not silently replace the account above after it has been committed. If a later correction is
needed, add a dated note here or create a new prompt record that links to this one.
