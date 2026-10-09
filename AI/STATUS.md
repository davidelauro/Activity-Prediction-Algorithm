# Current status and handoff

This file is the short handoff to the next session. Refresh it at the end of each substantial
work session. Replace stale details instead of letting this file become a diary.

- **Last updated:** 2026-10-09
- **Updated by:** Claude Code
- **Current branch:** literature/search-topics, pushed through `70086f1`
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
- `DEC-003` logged: whether to adopt any part of an externally proposed model stays the owner's
  decision, not an assistant's.
- A second, paragraph-by-paragraph pass through the problem statement, owner-led, identified 13
  candidate search topics across all three paragraphs, logged in
  `drafts/literature-search-topics.md`. One unformalized open item came out of this pass: the
  priority tiebreaker among venues at the same heat level.
- `drafts/search-prompts.md`: ten search prompts drawn from the 13 logged topics, each
  independent. Run 2026-10-09 in a fresh Opus chat, deliberately not through this project's own
  Agent tool, so the search had no exposure to anything already discussed in this project's main
  session; that mattered specifically for the El Farol guess, a claim that leaked from
  background knowledge into the project only because of context already present in the
  conversation that produced it.
- Results read in full from the Opus chat's Claude Docs page and saved to
  `drafts/literature-review-results.md`. Verdict on the El Farol guess: it holds, but only for
  the crowd-avoider half of the problem statement's described behaviour; the crowd-seeker half
  has its own source instead (Simon 1954, Leibenstein 1950). The search's own self-correction
  removed Arthur's original 1994 El Farol paper as not peer-reviewed, keeping two peer-reviewed
  papers that carry the same claims instead. A genuine gap surfaced too: no paper models
  correlated detection for human friends specifically, only for animal pairs and groups.
- All 43 sources from this second search logged in `AI/SOURCES.md` as `SRC-009` through
  `SRC-051` (`SRC-051` is `REJECTED`, the Arthur 1994 paper, closing the loop on the earlier
  unverified guess). Every entry stays `LEAD`: the search read many of them in full, but the
  owner has not personally checked any yet. Full prose detail for all of them lives in
  `drafts/literature-review-results.md`; the `AI/SOURCES.md` entries are the citation record,
  not a duplicate of that prose.

## In progress

- Nothing active. Logging from the second search just finished.

## Blockers or open questions

- The owner leads the model design; not started. See `AI/PROJECT.md`, "Chosen extension: to be
  decided."
- The simulator design, map generator, arrival process, synthetic social graph, not started.
- The comparison metric against the baseline not yet defined.
- The priority tiebreaker rule is flagged but not formalized: open question is whether the
  friend-presence check is personalized per viewer or global across all viewers.
- Whether to trim the 51 logged sources down to a smaller working set is explicitly deferred;
  the owner said the reason for any trim needs deciding later, not now.

## Unverified claims or results

- SRC-001 through SRC-051 in `AI/SOURCES.md` are all still `LEAD` or `REJECTED`; none read and
  personally checked by the owner yet, regardless of how thoroughly the search itself read them.
- Several entries carry their own internal caveats: unconfirmed DOIs or page ranges, content
  recalled from the search's memory rather than reread, or extensions worked out during the
  search rather than quoted from the source (most notably the ordinal-category derivation under
  SRC-032, Gneiting 2011).

## Next three actions

1. Decide, with a stated reason, whether and how to trim the 51 logged sources before writing
   the literature review narrative in `paper/sections/02-literature-review.tex`.
2. Grab the three bot-blocked open-access papers from the first search (Clement et al.,
   Timokhin et al., Zhuang and Mateu) by hand in a browser; links are in `AI/SOURCES.md`.
3. Formalize the priority tiebreaker rule, once the owner is ready to decide the open question
   inside it.

## Files to open first

- [`drafts/literature-review-results.md`](../drafts/literature-review-results.md): the full
  prose findings from the second search, organized by question.
- [`AI/SOURCES.md`](SOURCES.md): all 51 logged sources, all still leads.
- [`drafts/problem-statement-draft.md`](../drafts/problem-statement-draft.md): the current
  problem statement, not yet in the paper.
- [`drafts/literature-search-topics.md`](../drafts/literature-search-topics.md): the 13
  candidate search topics that drove the second search.

## Related records

- DEC-001, DEC-002, DEC-003 in `AI/DECISIONS.md`.
- ATT-001 in `AI/ATTEMPTS.md`.
- `AI/PROMPTS/2026-10-08-project-scaffolding.md` and
  `AI/PROMPTS/2026-10-09-literature-search-topics.md`.
