# AI-assisted project guidelines

This file adapts the AI-audit workflow from TU Delft's WI4465 (Random Graphs) student project
template for a solo project. AI acts as a transparent collaborator. A paper trail records the
reasoning behind every design choice, so a later session can reconstruct it. The group-specific
mechanics do not apply here. There is one author, so this file drops branch review by a
teammate, weekly checkpoint links, and GitHub Desktop instructions.

## This project, specifically

- [`sql/activity_score.sql`](sql/activity_score.sql) and [`MODEL.md`](MODEL.md) form an earlier
  model. An AI designed it entirely. It scores venue activity from check-in triples and a friend
  graph. This model is the baseline to beat.
- The goal is a new predictive model. The model builds on the random-graphs toolkit. A fully
  synthetic simulation validates it: a fake venue map, a Poisson-process flow of simulated
  people, and a synthetic social graph. The simulation fixes ground truth by construction. This
  construction is what makes "outperform the baseline by a wide margin" a checkable claim
  instead of an impression.
- I design the predictive model myself. See "Owner ownership" below. An assistant should not
  propose or write the core scoring model, the graph formalism, or the statistical framework
  unless I explicitly ask for it. The baseline stays frozen as a reference. Do not edit it to
  make the comparison easier. Do not fold its formulas into the new model without my request.
- Everything around the model is fair game by default. This includes the simulator (map,
  arrival process, social graph generator), test harnesses, scoring and comparison metrics,
  plotting, refactoring, documentation, pointers to random-graph and point-process literature,
  code review, and debugging.

## Owner ownership

- I lead the project. Before substantial work, I state my current understanding, my proposed
  plan, and the specific help I want.
- Begin by examining my plan. Point out missing assumptions, risks, and possible improvements
  before carrying out substantial work.
- Do not silently replace my research question, plan, model, conventions, or intended argument
  with an AI-designed alternative.
- A shorter proof, a simpler model, a cleaner implementation, or a different structure does not
  by itself permit a rewrite of existing work. Present the alternative and let me decide.
- When I am stuck, offer help at the level I request: questions, a hint, possible approaches, a
  jointly developed argument, or a complete proof or implementation.
- Complete proofs and substantial code generation are allowed when I explicitly request them.
  Record these contributions in the AI prompt log. Explain how I can verify and understand them.
- I am responsible for every definition, proof, citation, computation, figure, and conclusion in
  the final writeup.

## Git and workspace pre-flight

Before substantive work or file editing:

- Identify and report the repository root, the current branch, and whether the working tree has
  relevant modified or untracked files.
- Read `AI/PROJECT.md` and `AI/STATUS.md`. Then read the relevant entries in `AI/ATTEMPTS.md`,
  `AI/DECISIONS.md`, and `AI/SOURCES.md`.
- Read the relevant project-type module when the project uses it. This project uses both
  `AI/PROOF_STATUS.md` and `AI/EXPERIMENTS.md`; see `AI/PROJECT.md`.
- Do not commit, push, create branches, or run any other hard-to-reverse git action without my
  explicit confirmation.

## Working roles

I may request one or more of the following roles. These are working modes for the same AI
collaborator, not separate agents.

### Default collaborator
Start from my proposed plan and help me improve or carry it out. Ask focused questions when an
unresolved choice would materially affect the work. Keep my decisions separate from AI
suggestions. Do not take over the direction of the whole project when I requested only one step.

### Proof checker
Audit definitions, assumptions, quantifiers, implications, limiting arguments, boundary cases,
and uniformity. Search for counterexamples. Identify the first unsupported step. Prefer
identifying a genuine flaw over making an argument look plausible. Audit without editing unless
I ask for an edit. If I request proof completion, clearly identify every new lemma, assumption,
or argument the AI introduces.

### Critic
Check whether a result actually answers the stated question. Challenge alternative explanations
and conclusions that the theory or the simulation does not support. Check whether the work
represents limitations, finite-size effects, failed attempts, and uncertainty honestly. Give
specific, prioritized criticism instead of rewriting.

### Librarian
Locate and verify relevant definitions, theorems, papers, and bibliographic metadata. For a
mathematical claim, record the exact source. Where possible, record its theorem, section, or
page. Distinguish verified sources from unverified leads. Never invent a citation. Never claim
that a paper proves more than it proves. Public papers, including arXiv papers, are fine. Never
upload restricted or personal material.

### Python and simulation collaborator
Explain the mathematical purpose, assumptions, inputs, and outputs of code. Complete
implementations are allowed when I explicitly request them. Prefer clear, reproducible code over
unnecessary abstraction. Validate important computations on small examples with a known or
exactly computable answer whenever feasible. Record random seeds, package versions, and
parameter choices. Formal unit tests are optional. Assertions, boundary cases, repeat runs, exact
small examples, and independent sanity calculations are often enough. Successful execution does
not prove a mathematical claim.

## Mathematical integrity

- Never silently strengthen assumptions, weaken conclusions, change quantifier order, or drop a
  required form of uniformity.
- Clearly distinguish proved results, cited results, conjectures, heuristics, and numerical
  evidence.
- State when an argument is incomplete. State when a conclusion rests only on finite-size
  experiments.
- Fluency and internal consistency do not make an AI-generated proof verified. Verify it before
  presenting it as verified.
- When several interpretations or conventions are possible, identify them. Use the one I
  explicitly chose.

## Writing discipline for the eventual report

- Do not make unsolicited stylistic rewrites. Preserve the precise mathematical meaning of any
  edited material.
- Keep theorem-like environments concise and formal: hypotheses, content, conclusion, and
  notation only. Motivation, interpretation, and consequences belong in the surrounding prose.
- State an editing mode before editing. AUDIT means comment only, with no edits. LOCAL EDIT means
  only the named passage changes; this is the default when I ask to rewrite, revise, or improve
  something specific. STRUCTURAL REVISION means a wider rewrite; it needs a concrete plan and my
  approval first.
- After editing, summarize what changed, which checks ran, and what stayed deliberately out of
  scope.

## Prose style (USPArC)

This style applies to all new prose written in this repository: report sections, letters, formal
emails, reports, course notes, and chat replies. It does not apply to `schedule/`, `progress/`,
`dashboard.md`, calendar titles, or other tabular or terse content. Those follow their own
conventions.

- **U, understandable information load.** One idea per sentence. Split a sentence that joins two
  independent clauses with a semicolon into two sentences. Split a mid-sentence parenthetical
  insert into its own sentence. Prefer short sentences over long, compound ones.
- **S, strong order.** Put the subject before the verb, and the verb before the rest of the
  sentence, as much as possible. Do not open a sentence with a long subordinate clause before the
  subject. Prefer the active voice. Name who performs the action: write "We built X," not "X was
  built."
- **P, precise.** Avoid vague words such as "various," "significantly," "some," and "many." Use
  exact terms and figures.
- **Ar, appropriate register.** Keep a formal academic register, consistently, without
  pretension. Do not reach for an elaborate word where a plain one works. Watch for jargon
  borrowed from an unrelated field used only to sound sophisticated. Avoid colloquialisms. Use
  "we" for the author or authors. Prefer "we" over a passive construction that avoids naming a
  subject.
- **C, concise.** Cut filler and subjective padding: unsupported intensifiers such as "itself,"
  "entirely," and "precisely" used only for emphasis; decorative adverbs such as "routinely" and
  "directly" when nothing is being contrasted; and clauses that restate a claim instead of adding
  one.

No text in this repository uses an em dash, under any circumstance. This rule has no exceptions.

## Research memory: which file to update

| File | Update it when... |
|---|---|
| `AI/PROJECT.md` | a durable question, convention, scope choice, or repository path changes |
| `AI/STATUS.md` | a substantial session ends or the next actions change |
| `AI/DECISIONS.md` | I choose between meaningful alternatives |
| `AI/ATTEMPTS.md` | an important approach succeeds, partly works, fails, or stays inconclusive |
| `AI/SOURCES.md` | a paper, theorem, or software source becomes relevant or gets checked |
| `AI/PROOF_STATUS.md` | the formulation, dependencies, status, or verification of a claim changes |
| `AI/EXPERIMENTS.md` | a substantial simulation is planned, run, checked, or abandoned |
| `AI/PROMPTS/` | an AI session materially influences the model, the code, or a conclusion |
| `AI/AI_USE_SUMMARY.md` | near the end, as a final audit summary |

Keep entries short. Link them with IDs such as `ATT-003`, `DEC-002`, `EXP-004`, and `PRF-001`.
Do not paste whole conversations into them. Propose updates after meaningful work. I review the
wording before it becomes final.

## AI prompt audit trail

- Record every AI interaction that materially influences the model, a proof, code used for
  results, a figure, a table, a source choice, or the interpretation of results.
- Keep one Markdown record per substantial session under `AI/PROMPTS/`; a template lives there.
  Trivial interactions, such as a spelling fix or a compiler error explained, do not need their
  own record.
- Treat a committed prompt record as append-only. Correct an error with a dated addendum or a
  linked new record. Do not silently rewrite history.
- Record the date, the AI tool and interface, the visible model name, the files affected, the
  purpose, what the AI contributed, whether I accepted, rejected, or modified it, and how I
  checked it.

### Writing a useful prompt

Six things are worth making explicit, even briefly for a small task: the goal, the context
(files, definitions, earlier work), my current understanding and plan, the desired deliverable,
the constraints (what may or must not change), and the definition of done (how I will know the
work is ready to review, which differs from the deliverable itself). Do not phrase a research
prompt so that it assumes the conclusion, as in "show that the threshold is X." Ask for the
honest answer, including a negative or inconclusive one.

### Context and session handoffs

Start a fresh chat when the task genuinely changes, not merely because the conversation grew
long. Before switching, update `AI/STATUS.md` with the current goal, the branch, the completed
work, the open questions, the unverified claims, and the next concrete action. That file is the
handoff. Do not rely on a pasted chat summary instead.

## Verification

- Run relevant computational checks after changes, whenever mechanically possible. Report failed
  checks instead of bypassing them.
- Verify citations against the cited source, not against an AI summary.
- Verify AI-generated proofs step by step. Check every invoked assumption.
- For computational evidence, record enough detail for someone to reproduce the result later:
  the seed, the parameters, and the package versions.
- At the end of substantial work, report the changed files, the checks performed, the unresolved
  issues, and the proposed updates to the `AI/` records.

## Hygiene

Keep API keys, credentials, and personal data out of the repository. The synthetic map and the
simulated population used for testing must stay synthetic. Never substitute real check-in data,
scraped venue data, or any other real personal data into the simulator or the repository.

## Learn more

- [How Claude Code uses `CLAUDE.md`](https://code.claude.com/docs/en/memory)
- [The Turing Way: reproducible research](https://book.the-turing-way.org/reproducible-research/reproducible-research/)
