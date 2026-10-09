# Current status and handoff

This file is the short handoff to the next session. Refresh it at the end of each substantial
work session. Replace stale details instead of letting this file become a diary.

- **Last updated:** 2026-10-09
- **Updated by:** Claude Code
- **Current branch:** literature/search-topics, committed as `798ed8f` and pushed
- **Current stage:** planning

## Done and checked

- Baseline review: `sql/activity_score.sql` and `MODEL.md` read and sanity-checked. No syntax
  or logic bugs found. The structural limit around ρ_v is understood.
- AI-audit workflow scaffolding, on `master`/`main` as `0f090f0`, and a later correction, on
  `TheProblem` as `8e34e82`, removing every claim that the new model is grounded in random
  graphs or point processes; the mathematical framework stays undecided.
- Paper scaffolding on `TheProblem`: `paper/main.tex` with one file per section, builds clean
  with `pdflatex` and `bibtex` at their exact binary paths in `.vscode/settings.json`, since
  this machine's TeX install is invisible to VS Code's own `PATH`. `paper/references.bib` fixed
  for a BibTeX parsing bug, an at-sign character anywhere in the file, even in a comment,
  starts entry parsing.
- `paper/sections/03-problem-statement.tex` stays an owner-authored stub, by choice; the actual
  problem statement, rewritten in the USPArC style and since corrected (the independence
  assumption now excludes friends), lives in `drafts/problem-statement-draft.md` instead, not
  placed in the paper yet.
- A first literature search, run externally against three research questions, returned about
  90 candidates, trimmed to 8 priority papers, logged in `AI/SOURCES.md` as `SRC-001` through
  `SRC-008`. Four are downloaded to `paper/literature/` (gitignored, not redistributed through
  git); three are confirmed open access but blocked by bot protection for automated download,
  need grabbing by hand; one is confirmed closed access.
- `main` and `TheProblem` are both pushed to `origin`.
- `DEC-003` logged: whether to adopt any part of an externally proposed model stays the owner's
  decision, not an assistant's.
- A second, paragraph-by-paragraph pass through the problem statement, owner-led, identified 13
  candidate search topics across all three paragraphs, logged in
  `drafts/literature-search-topics.md`. This list is explicit that it does not assume the
  SRC-001 to SRC-008 search carries over; it answers a different set of questions. One
  unformalized open item came out of this pass: the priority tiebreaker among venues at the
  same heat level.
- `drafts/search-prompts.md`: ten search prompts drawn from the 13 logged topics, each meant to
  run as its own independent query. Includes a single paste-ready message bundling all ten with
  citation-honesty instructions, for running in a fresh chat. Decided to run this batch in a new
  chat on Claude Opus, not through this project's own Agent tool, specifically so the search has
  no exposure to anything already discussed in this project's main session; that matters because
  of the El Farol guess, a claim that leaked from background knowledge into the project only
  because of context already present in that conversation.

## In progress

- The owner is about to run the ten prompts in a fresh chat. Results are not back yet.

## Blockers or open questions

- The owner leads the model design; not started. See `AI/PROJECT.md`, "Chosen extension: to be
  decided."
- The simulator design, map generator, arrival process, synthetic social graph, not started.
- The comparison metric against the baseline not yet defined.
- The priority tiebreaker rule is flagged but not formalized: open question is whether the
  friend-presence check is personalized per viewer or global across all viewers.
- The ten search prompts have not been run yet; results from the fresh Opus chat are pending.

## Unverified claims or results

- SRC-001 through SRC-008 in `AI/SOURCES.md` are all still `LEAD`, none read and checked by the
  owner yet.
- The 13 items in `drafts/literature-search-topics.md` are candidate topics, not confirmed
  search results; two early AI-suggested leads from an earlier pass were removed after the
  owner caught that they came from searches run without being asked for.

## Next three actions

1. Run the ten prompts in `drafts/search-prompts.md` in a fresh Opus chat, then bring results
   back to log into `AI/SOURCES.md` as leads.
2. Grab the three bot-blocked open-access papers (Clement et al., Timokhin et al., Zhuang and
   Mateu) by hand in a browser; links are in `AI/SOURCES.md`.
3. Formalize the priority tiebreaker rule, once the owner is ready to decide the open question
   inside it.

## Files to open first

- [`drafts/problem-statement-draft.md`](../drafts/problem-statement-draft.md): the current
  problem statement, not yet in the paper.
- [`drafts/literature-search-topics.md`](../drafts/literature-search-topics.md): the 13
  candidate search topics, organized by paragraph and by who identified them.
- [`drafts/search-prompts.md`](../drafts/search-prompts.md): the ten prompts built from that
  list, with the paste-ready version for the fresh Opus chat.
- [`AI/SOURCES.md`](SOURCES.md): the first search's 8 references, all still leads.

## Related records

- DEC-001, DEC-002, DEC-003 in `AI/DECISIONS.md`.
- ATT-001 in `AI/ATTEMPTS.md`.
- `AI/PROMPTS/2026-10-08-project-scaffolding.md`, including its addendum on the removed
  methodology assumption.
