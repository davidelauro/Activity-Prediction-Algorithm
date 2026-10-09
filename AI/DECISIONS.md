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

### DEC-006 Fix the synthetic map's structure and scale

- **Date:** 2026-10-09
- **Status:** active
- **Decision:** eight choices define the synthetic venue map.
  1. The map carries community members only. The simulator models no general public.
  2. Venues form an abstract adjacency graph. The map assigns no geographic coordinates.
  3. Venues cluster into districts rather than spreading uniformly.
  4. Spatial substitution between nearby venues exists in the simulated ground truth.
  5. Every venue exists from the first timestep. No venue opens or closes during the window.
  6. One fixed map serves every repetition, for now.
  7. Each venue's intrinsic draw comes from a distribution rather than a shared constant.
  8. Scale follows an average European university city. The community holds about 30,000
     members, and the map holds 75 to 125 venues. Community size equals the student population.
- **Alternatives considered:** geographic coordinates instead of an abstract graph; a uniform
  random layout instead of districts; no substitution between venues; venues entering during the
  window; a freshly drawn map for each repetition; an identical intrinsic draw for every venue;
  a simulated general public alongside the community.
- **Reason:** choice 8 follows the data in SRC-060 and SRC-061. Eleven European university
  cities give a median population of 131,591 and a median resident population aged 20 to 29 of
  27,731. Seven of them with current core-city figures give a median student enrolment of
  33,262. Both routes converge on roughly 30,000, which the owner adopted as community size.
  Three of those cities returned 121, 122, and 75 nightlife venues. The owner stated no reason
  for choices 1 through 7, and this entry records them as choices rather than as conclusions.
- **Consequences or limitations:** choice 4 couples venues to each other, so one venue's count
  carries information about its neighbours, and the graph structure becomes informative rather
  than decorative. Choice 6 makes every result conditional on the one map drawn, so no finding
  generalizes across maps until the map is resampled; SRC-027 treats this as a data-generating
  choice to declare in advance, which this entry does. Choice 7 names no distribution, so the
  map cannot be built yet. Three further items stay unspecified and also block implementation:
  the district count and venues per district, whether a graph edge is binary or weighted, and
  which busyness a substituting person reacts to, the real crowd or the displayed heat map. That
  last item overlaps the deferred feedback-loop question below.
- **Deferred, not decided:** two questions wait on a prior decision about how the simulator
  constructs the subset of people who hold the app. The first is whether displayed heat changes
  where people go. The second is whether check-in probability is one global number or one per
  venue. The owner deferred both on the ground that the literature must settle how check-ins get
  modeled first. DEC-004 already defines the per-venue quantity as the probability that a
  present community member checks in, which bundles holding the app and choosing to post into
  one number.
- **Approved by:** owner
- **Related attempt, source, experiment, data, or proof IDs:** SRC-027, SRC-042, SRC-043,
  SRC-045, SRC-046, SRC-060, SRC-061; DEC-004; DEC-005
- **Related prompt log, commit, or pull request:**
  `AI/PROMPTS/2026-10-09-map-design-decisions.md`

### DEC-005 Keep the baseline out of the simulator's design

- **Date:** 2026-10-09
- **Status:** active
- **Decision:** the baseline, meaning `sql/activity_score.sql` and `MODEL.md` together, informs
  no part of the simulator's design. It enters only at comparison time, at the end.
- **Alternatives considered:** reading the baseline's input requirements first and designing the
  simulator to suit them, which is what an assistant had started doing in this session.
- **Reason:** designing the simulated world around what the baseline can represent would rig the
  comparison in the baseline's favour. The faithful order builds the world from the problem
  statement, then reports at the end which mechanisms each model could and could not represent.
- **Consequences or limitations:** three facts about the baseline, surfaced before this rule was
  stated, now count as comparison-time concerns rather than design inputs. The baseline computes
  no distance between venues and reads coordinates only to filter and to average. It discards
  any event with a null coordinate. It divides by how long each venue has been observable. The
  simulator may therefore need an adapter at the end, written then, not now. A separate
  consequence is that the eventual writeup must disclose which mechanisms in the simulated truth
  each model was able to represent, since a margin earned on an unrepresented mechanism measures
  coverage rather than quality.
- **Approved by:** owner
- **Related attempt, source, experiment, data, or proof IDs:** ATT-001; DEC-006
- **Related prompt log, commit, or pull request:**
  `AI/PROMPTS/2026-10-09-map-design-decisions.md`

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
