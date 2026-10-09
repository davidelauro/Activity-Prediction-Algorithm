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

### DEC-004 Scope the target to the community, settle three activity parameters

- **Date:** 2026-10-09
- **Status:** active
- **Decision:** the project estimates presence of the app's own target community, an unknown
  demographic (young adults who want to socialize with friends), not general venue attendance
  and not a known, closed population. Venue activity is described by three parameters:
  headcount, groups, and familiarity. Familiarity is computed from check-in history and is a
  known covariate, not an uncertain quantity requiring prediction the way headcount and groups
  are.
- **Alternatives considered:** treating the general public as the target population (the
  original, unscoped reading); momentum as a fourth parameter, proposed and then dropped by the
  owner without a stated reason; dwell time as a parameter, considered weaker since Bell and
  Pliner (`SRC-058`) found it tracks group size rather than adding independent information.
- **Reason:** scoping to the community resolves part of the baseline's own ρ_v identifiability
  problem from `MODEL.md`: ρ_v now means "probability a community member who is present checks
  in," a narrower and more answerable question than "probability any real attendee uses this
  app." Familiarity was added because it is the strongest newly surfaced, directly measurable
  candidate from a dedicated search on what makes a place feel socially alive
  (`drafts/social-aliveness-search.md`); Hristova et al. (`SRC-056`) gives computable metrics
  for it from exactly this project's own data, and Dunbar et al. (`SRC-055`) gives a reason to
  care, familiar venues showed more actual engagement than high-turnover ones at comparable or
  larger headcount.
- **Consequences or limitations:** "community" stays an unknown target population, not a closed
  registry, so the identifiability concerns in `SRC-009` through `SRC-015` still apply, narrowed
  but not eliminated. Headcount's own role is also now in question, not whether to include it,
  but whether it should enter linearly: Blut and Iyer (`SRC-053`) and Cheng et al. (`SRC-054`)
  both point toward a non-linear relationship, and Gabriel et al. (`SRC-059`) found raw headcount
  only weakly predicted felt social connection once other factors were controlled. That shape
  question is not resolved by this decision.
- **Approved by:** owner
- **Related attempt, source, experiment, data, or proof IDs:** SRC-053 through SRC-059
- **Related prompt log, commit, or pull request:** `ab4c549` on `literature/search-topics`

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
