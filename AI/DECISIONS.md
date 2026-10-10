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

### DEC-010 Settle the quantile split as terciles

- **Date:** 2026-10-10
- **Status:** active
- **Decision:** the two boundaries that separate quiet, busy, and packed split venues into
  equal thirds by true headcount, each night, each time the app judges. This settles the open
  item left by `DEC-007` item 3.
- **Alternatives considered:** a skewed split, such as 60, 30, 10, which the owner had flagged
  as a way to make the map show mostly quiet venues, matching an intuition about most nights
  having more quiet venues than packed ones.
- **Reason:** the boundaries are quantiles of tonight's own true-headcount distribution, not of
  any fixed historical reference (confirmed the same session). Under that design, whatever
  split fractions are chosen become the exact ground-truth class proportions every time, so a
  trivial procedure that always guesses the majority class scores exactly that fraction.
  Terciles give the cleanest, least arbitrary baseline, exactly 33 percent, and need no further
  argument for why those particular numbers. A skewed split would need its own justification
  and would weaken how much the 80 percent match-rate target actually demonstrates. Terciles
  also match the app's purpose more directly: it reports relative standing within tonight's
  activity, not an absolute capacity judgement, so "top third, middle third, bottom third of
  tonight" is the honest description.
- **Consequences or limitations:** the map will show roughly equal numbers of each color on any
  given night, which does not match an intuition that most nights have more quiet venues than
  busy or packed ones. That intuition, if true, describes the absolute distribution of
  activity, not venues' standing relative to each other, so it is not evidence against this
  choice, but the discussion section should say so explicitly rather than let a reader assume
  the map should look mostly quiet most nights. The venues actually shown (those with at least
  one check-in) do not split into exact thirds either, because venues with zero check-ins,
  disproportionately the true-quiet ones, get hidden before the split is read off. This
  interaction with adoption, already noted in `AI/STATUS.md`, remains open.
- **Approved by:** owner
- **Related attempt, source, experiment, data, or proof IDs:** resolves the first open item
  under `DEC-007`. Does not rely on `SRC-028`, following `DEC-009`.
- **Related prompt log, commit, or pull request:** this session, 2026-10-10, continuing
  `problem/adoption-threshold`.

### DEC-009 Stop citing literature-search sources to justify the live problem statement

- **Date:** 2026-10-10
- **Status:** active
- **Decision:** the problem statement states its own structural choices, such as the number of
  levels, the boundary form, the window, and the two targets, as owner choices. It states them
  without citing the sources logged in `AI/SOURCES.md`. This reverses the part of `DEC-007` item
  3 that cited `SRC-028` as the reason for choosing quantile boundaries over absolute headcounts.
  The choice itself, quantiles rather than absolute counts, stands unchanged. Only its stated
  reason changes, from a literature citation to an owner choice. `AI/SOURCES.md` keeps `SRC-028`
  logged, unverified, and available for the literature review section later if independently
  checked.
- **Alternatives considered:** keeping `SRC-028` as a citation with an explicit caveat that it
  is an unverified lead; dropping quantile boundaries as the boundary rule entirely and
  reopening how boundaries are set.
- **Reason:** `DEC-008` already cleared out literature-search output once because it was driving
  the old framing of the problem. The owner does not want literature-search output, verified or
  not, to keep entering the live problem statement as justification. The problem statement
  should describe the problem as the owner has settled it, not carry provisional outside
  support for a choice the owner already made on other grounds.
- **Consequences or limitations:** `drafts/problem-statement-v2.md`'s basis table needs its
  `SRC-028` citation dropped for the boundary-form row. `AI/STATUS.md` needs the same update.
  `paper/sections/03-problem-statement.tex` already stated the quantile choice without an
  in-text citation, so it needs no change. If the literature review section later verifies
  `SRC-028` independently, it may still cite it there as review material, separate from the
  problem statement.
- **Approved by:** owner
- **Related attempt, source, experiment, data, or proof IDs:** corrects `DEC-007` item 3 and its
  related-sources line without rewriting them, the same way `DEC-008` corrected pointers to
  files it deleted. `SRC-028` stays logged in `AI/SOURCES.md`, status `LEAD`, unaffected.
- **Related prompt log, commit, or pull request:** this session, 2026-10-10, continuing
  `problem/adoption-threshold`.

### DEC-008 Delete the first two literature rounds and start from the restated problem

- **Date:** 2026-10-10
- **Status:** active
- **Decision:** start over from the problem in `drafts/problem-statement-v2.md`, on a new branch
  `problem/adoption-threshold`. Five files are deleted outright rather than archived:
  `drafts/literature-search-topics.md`, `drafts/search-prompts.md`,
  `drafts/literature-review-results.md`, `drafts/social-aliveness-search.md`, and
  `drafts/problem-statement-draft.md`. `paper/sections/02-literature-review.tex` returns to a
  stub, since its contents answered three research questions the restated problem replaced.
  `AI/SOURCES.md` keeps all 65 entries untouched, and no `AI/` record is deleted.
- **Alternatives considered:** archiving the five drafts under `drafts/archive/` instead of
  deleting them; pruning `AI/SOURCES.md` down to the roughly 25 entries that bear on the
  restated problem and marking the other 35 out of scope; deleting the `AI/` records as well,
  which the owner was offered and did not take; doing the clear-out on
  `literature/search-topics` rather than on a new branch.
- **Reason:** the deleted drafts all belong to the old framing, in which the model predicted a
  headcount per venue from a map of venues. The restated problem outputs a three-level display
  and asks for an adoption threshold, so those drafts no longer describe the work. The owner
  chose outright deletion over archiving, and git history keeps every version regardless.
- **Consequences or limitations:** four present-tense claims in committed records became false
  when the files went, and all four were corrected in the same commit. `AI/SOURCES.md` said the
  full writeups of both searches lived in two of the deleted drafts, and now points at git
  history instead. `drafts/problem-statement-v2.md` said its predecessor stayed in place, and
  now says where it went.
  Two committed decisions still carry pointers to deleted files, and this entry corrects them
  rather than rewriting them, since `AGENTS.md` keeps old decisions as written. `DEC-004` cites
  `drafts/social-aliveness-search.md` for the social-aliveness search detail. `DEC-007` cites
  `drafts/problem-statement-draft.md` as the alternative framing it rejected. Both resolve only
  in git history, at commit `23a4629`.
  The prompt records under `AI/PROMPTS/` also name the deleted files. Those stay untouched and
  stay accurate, because each one is a dated account of a session in which the files existed.
  The main risk this decision accepts is that roughly 35 of the 65 logged sources are now out of
  scope while still sitting in `AI/SOURCES.md`. Nobody has marked which, so a later session has
  to redo that classification or read it out of
  `AI/PROMPTS/2026-10-09-problem-statement.md`, which records the three buckets.
- **Approved by:** owner
- **Related attempt, source, experiment, data, or proof IDs:** follows DEC-007. Touches DEC-004
  and DEC-007 only by correction, not by amendment.
- **Related prompt log, commit, or pull request:** last commit holding the deleted files is
  `23a4629` on `literature/search-topics`.

### DEC-007 Restate the problem around a three-level display and an adoption threshold

- **Date:** 2026-10-09
- **Status:** active
- **Decision:** the problem is restated, and the statement lives in
  `drafts/problem-statement-v2.md`. The app's output is a three-level display rather than a
  headcount. The research question asks for the smallest adoption at which the display becomes
  good enough, and it asks that of every possible procedure rather than of one. The following
  values are settled.
  1. Three levels, labelled quiet, busy and packed, shown as yellow, orange and red. The owner
     chose three so the colours stay recognizable on screen without a legend.
  2. A venue with no check-ins inside the window does not appear on the map at all.
  3. The two boundaries sit at quantiles of the headcount distribution, not at absolute
     headcounts. The quantile split itself is not yet chosen.
  4. The window runs two hours back from the present moment.
  5. Success means a match rate of 80 percent among shown venues, and coverage of 80 percent
     among venues that are genuinely busy or packed.
  6. An adopter is a member who uses the app. Adoption is the percentage of the community who
     are adopters.
  7. Presence at a venue is enforced by the app rather than assumed, since the app accepts a
     check-in only from a user at the venue's location. The posting assumptions therefore number
     three, not four.
  8. The community is a fixed and finite set of people. Deciding who belongs to it in practice
     stays out of scope, and without that assumption no venue has a well defined headcount.
- **Alternatives considered:** predicting a headcount and treating the levels as presentation,
  which is what `drafts/problem-statement-draft.md` does; grey for a venue with no check-ins,
  which was adopted and then dropped; absolute rather than quantile boundaries; four levels
  rather than three; scoring with an asymmetric cost ratio for overestimating, which the earlier
  draft carried and the owner removed; a per-user window derived from each user's own drink rate,
  and a window varying by time of day, both of which the owner raised and both of which were set
  aside as refinements rather than parts of the problem.
- **Reason:** the owner's own reasoning drove the three structural moves. The user acts on a
  comparison between venues, so a count is a means rather than the product. An arithmetic check
  showed that no adoption level yields a precise per-venue headcount for a community of 30,000
  across 100 venues, while a coarse level is reachable, which makes the level the only honest
  output. Asking the question of every possible procedure keeps it inside the problem, because a
  question about one estimator's performance is a question about a solution the statement does
  not contain.
- **Consequences or limitations:** six, and the first three are the ones to watch.
  The problem can no longer be answered by simulation alone. A claim about every procedure needs
  the optimal rule derived first, after which simulation evaluates it, and the result then holds
  relative to the assumed model and prior rather than universally.
  Two quantities the answer depends on still have no source: how unequally members spread across
  venues, which the owner's own analysis ranks above adoption in importance, and how often an
  adopter posts.
  Dropping grey means the map cannot distinguish "no information" from "quiet", and that trade
  belongs in the discussion.
  The quantile split stays open, and a skewed split would raise the trivial baseline and weaken
  the 80 percent target.
  The owner's insight that per-user post counts carry information is deliberately absent, since
  it contradicts the constant-posting-probability assumption and belongs with the solution.
  The hour of the evening is unfixed, and it feeds both the window's justification and turnout.
- **Approved by:** owner
- **Related attempt, source, experiment, data, or proof IDs:** supersedes DEC-006 choices 1 to 7
  and keeps choice 8. Sources: SRC-028 for quantile classes, SRC-062 and SRC-064 for the window,
  SRC-065 and SRC-060 for scale and turnout, SRC-013 through SRC-015 and SRC-022 for the limit
  side, SRC-029 through SRC-031 for how readers treat categories.
- **Related prompt log, commit, or pull request:**
  `AI/PROMPTS/2026-10-09-problem-statement.md`

### DEC-006 Fix the synthetic map's structure and scale

- **Date:** 2026-10-09
- **Status:** superseded by DEC-007 on 2026-10-09, except for choice 8, the scale. Choices 1
  through 7 describe a venue map that the stripped-down problem of DEC-007 does not have. The
  entry stays as written, since the workflow keeps superseded decisions rather than deleting
  them.
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
