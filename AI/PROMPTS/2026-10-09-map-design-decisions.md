# AI session: map design decisions and scale calibration

- **Date:** 2026-10-09
- **AI tool and interface:** Claude Code, desktop app, Code tab
- **Visible model name, if shown:** Opus 5
- **Branch:** `literature/search-topics`. A branch `simulator/map-design` was created during the
  session and then left unused; see "Remaining uncertainty".
- **Purpose:** decide how the synthetic venue map gets constructed, and gather real data to set
  its scale.
- **Files or sources provided to the AI:** `AGENTS.md`, `AI/PROJECT.md`, `AI/STATUS.md`,
  `AI/SOURCES.md`, `AI/DECISIONS.md`, `AI/ATTEMPTS.md`, `AI/EXPERIMENTS.md`,
  `drafts/problem-statement-draft.md`, `drafts/literature-search-topics.md`,
  `drafts/search-prompts.md`, `MODEL.md`, `sql/activity_score.sql`.

## Initial prompt

The session opened on a different task, the ten literature prompts from
`drafts/search-prompts.md`. The owner interrupted that after one search and redirected.

> let's start designing a simulation for the map

Then, immediately after:

> i want to take the decisions about how the map shoul be created for the simulations

## Substantive follow-up prompts

> the current code should never be considered till the end

This produced DEC-005 and withdrew part of the assistant's earlier analysis.

> D2 substitution / D3 we can't model check-ins until we take decisions based on the literature
> about how this should be carried out. for people who don't have the app a natural choice is
> open loop, but again, we need to decide how to construct the subset of people that do have it.
> D7 distribution / D8 still same problem as D3 / D9 every venue already exists

> i am starting to lose control over what we are doing

> hold on: we need student population also (this will be the size of the community

> push what we have decided so far

## What the AI contributed

- A list of ten open decisions about the map, labelled D1 to D10, with alternatives and
  consequences for each. The assistant chose none of them.
- Three risks raised before any decision: that shaping ground truth around the baseline's blind
  spots would rig the comparison, that a feedback loop makes ground truth depend on the model
  under test, and that a per-venue check-in probability contradicts paragraph 2 of the problem
  statement as written.
- A direct query against the Eurostat dissemination API for population and student counts in
  eleven European university cities, and against the Overpass API for nightlife venue counts in
  three of them. Both are recorded as SRC-060 and SRC-061, with the exact queries.
- The observation that both routes to community size, student enrolment and resident population
  aged 20 to 29, converge on roughly 30,000.
- The four records written in this session: SRC-060, SRC-061, DEC-005, DEC-006, and the
  `AI/STATUS.md` refresh.

## My decision

- **Outcome:** modified
- **What I decided or changed:** the owner answered D1, D2, D4, D5, D6, D7, D9, and D10, and
  deferred D3 and D8. The owner set community size equal to the student population, which the
  assistant had not proposed. The owner ruled the baseline out of the simulator's design, which
  withdrew one of the assistant's three risks as inadmissible. The owner also stated that the
  assistant had expanded the decision list faster than it could be closed, and the assistant
  stopped adding items.

## Verification

- The Eurostat and Overpass figures come from queries the assistant ran and read directly, not
  from recall or from a search summary. Both queries are written into `AI/SOURCES.md` so anyone
  can repeat them.
- The Eurostat student indicator was checked against a second indicator rather than trusted.
  Leuven returns 58,601 students against a total population of 104,239 and a resident 20-24
  population of 8,636. That inconsistency establishes that the indicator counts enrolment at
  institutions in the city, not residence, which is recorded as a limitation.
- The two routes to community size were cross-checked against each other. Student enrolment gives
  a median of 33,262 and resident population aged 20 to 29 gives a median of 27,731.
- The claim that the baseline computes no distance between venues was checked by reading
  `sql/activity_score.sql` rather than assumed. That check predates DEC-005 and is now parked as
  a comparison-time note.
- Nothing about the map's structure was verified, because nothing about it has been built. DEC-006
  records choices, not results.

## Resulting work

- **Related record IDs:** DEC-005, DEC-006, SRC-060, SRC-061
- **Files changed:** `AI/SOURCES.md`, `AI/DECISIONS.md`, `AI/STATUS.md`, and this record.
- **Related earlier commit or pull request, if applicable:** builds on `f799ce9`, which carried
  DEC-004.
- **Remaining uncertainty:**
  - DEC-006 leaves the intrinsic-draw distribution unnamed, so the map cannot be built.
  - Three implementation details stay unspecified: district count and venues per district,
    whether a graph edge is binary or weighted, and which busyness a substituting person reacts
    to.
  - D3 and D8 both wait on a prior decision about how the app-holding subset gets constructed.
  - The three venue counts in SRC-061 cover three cities only. The public Overpass endpoint
    began refusing requests, which is why the sample is that small.
  - The branch `simulator/map-design` was created in this session and then left at an earlier
    commit. The sandbox blocked both `git branch -f` and a fast-forward merge, so the records
    landed on `literature/search-topics` instead. The branch is empty and can be deleted or
    moved by hand.

## Context contamination, disclosed

`drafts/search-prompts.md` recorded a decision to run the ten literature prompts in a fresh
chat, specifically so the El Farol Bar guess could not be reinforced by context already present
in the project session. This session read that draft, so it became exactly the contaminated
context the decision was meant to avoid. The assistant disclosed this before searching. Only one
of the ten searches ran before the owner redirected, and it covered N-mixture models, not El
Farol. No El Farol source entered the repository from this session.

## Later corrections or addenda

Do not silently replace the account above after it has been committed. If a later correction is
needed, add a dated note here or create a new prompt record that links to this one.
