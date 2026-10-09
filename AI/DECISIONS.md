# Decision log

This log records choices that affect the direction, interpretation, or reproducibility of the
project. It does not record every small edit. Keep old decisions, and mark a decision as
superseded if I later change my mind.

Use IDs `DEC-001`, `DEC-002`, and so on.

## Entry template

### DEC-___ Short title

- **Date:** YYYY-MM-DD
- **Status:** active / superseded
- **Decision:**
- **Alternatives considered:**
- **Reason:**
- **Consequences or limitations:**
- **Approved by:**
- **Related attempt, source, experiment, data, or proof IDs:**
- **Related prompt log, commit, or pull request:**

---

## Decisions

Add new entries above older entries.

### DEC-003 Reserve the choice of whether to adopt the four-layer model

- **Date:** 2026-10-09
- **Status:** active
- **Decision:** whether to adopt any part of the four-layer generative model proposed in the
  external AI-assisted literature search (seasonal baseline, latent nightly busyness, group
  arrivals, detection, summarized in `venuesReferences`) is a choice the owner reserves for
  themselves. An assistant may explain the proposal, surface the literature behind it, and help
  with everything around it, but does not pick it, any part of it, or an alternative, on its
  own.
- **Alternatives considered:** letting an assistant propose a recommendation once the literature
  review is further along.
- **Reason:** matches the ownership rule already in `AGENTS.md`: the mathematical framework is
  the owner's call, and the course the AI-audit workflow came from must not quietly become a
  commitment to a specific model.
- **Consequences or limitations:** none identified yet.
- **Approved by:** owner
- **Related attempt, source, experiment, data, or proof IDs:** SRC-001 through SRC-008
- **Related prompt log, commit, or pull request:** none yet

### DEC-002 Adopt a fixed prose style (USPArC) for all repository writing

- **Date:** 2026-10-08
- **Status:** active
- **Decision:** All new prose in this repository, including report sections, formal writing, and
  chat replies, follows five rules recorded in `AGENTS.md` under "Prose style (USPArC)." The
  rules cover understandable information load (one idea per sentence, no semicolon-joined
  independent clauses, no mid-sentence parentheticals), strong subject-verb-object order and
  active voice, precise wording over vague quantifiers, a consistent formal and plain academic
  register, and conciseness (no unsupported intensifiers and no restating clauses). The
  repository bans em dashes outright, with no exceptions. The rule exempts `schedule/`,
  `progress/`, `dashboard.md`, calendar titles, and other tabular or terse content.
- **Alternatives considered:** no fixed style guide; relying on default AI writing conventions.
- **Reason:** the rule keeps every piece of prose in the eventual report, and in AI-assisted
  writing generally, consistent and readable. Without it, style would drift across sessions and
  across assistants.
- **Consequences or limitations:** none identified yet. Revisit the rule if it proves too rigid
  for a specific section, such as dense mathematical exposition.
- **Approved by:** owner
- **Related attempt, source, experiment, data, or proof IDs:** none
- **Related prompt log, commit, or pull request:** `AI/PROMPTS/2026-10-08-project-scaffolding.md`

### DEC-001 Adopt an AI-audit workflow for a solo project

- **Date:** 2026-10-08
- **Status:** active
- **Decision:** adapt the TU Delft WI4465 (Random Graphs) student project AI-audit workflow to
  this personal project. The adapted set covers `AGENTS.md`, `AI/PROJECT.md`, `AI/STATUS.md`,
  `AI/DECISIONS.md`, `AI/ATTEMPTS.md`, `AI/SOURCES.md`, `AI/AI_USE_SUMMARY.md`, `AI/PROMPTS/`,
  and the `EXPERIMENTS.md` and `PROOF_STATUS.md` optional modules. The adaptation drops the
  group-specific mechanics: teammate review, weekly checkpoint submission, and GitHub
  Desktop/Codex-specific instructions.
- **Alternatives considered:** no formal process, keeping informal notes only; keeping the full
  group template verbatim.
- **Reason:** a prompt, decision, and attempt log stays useful independent of group size. The
  log records what the AI-built baseline actually did, and it will make the later claim that the
  new model substantially beats the baseline auditable instead of asserted.
- **Consequences or limitations:** some course-specific mechanics, such as the weekly checkpoint
  link and teammate pull-request review, have no solo equivalent. The adaptation dropped them
  instead of translating them.
- **Approved by:** owner
- **Related attempt, source, experiment, data, or proof IDs:** none
- **Related prompt log, commit, or pull request:** `AI/PROMPTS/` (record to be added for this
  session)
