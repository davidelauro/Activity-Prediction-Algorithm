# AI session: restating the problem

Continues `AI/PROMPTS/2026-10-09-map-design-decisions.md`, same calendar day and same
conversation. That record is committed and stays as written. This one covers everything after it.

- **Date:** 2026-10-09
- **AI tool and interface:** Claude Code, desktop app, Code tab
- **Visible model name, if shown:** Opus 5
- **Branch:** `literature/search-topics`
- **Purpose:** restate the problem so that it is well posed, and settle every value that needs
  no literature behind it.
- **Files or sources provided to the AI:** `AGENTS.md`, the `AI/` records,
  `drafts/problem-statement-draft.md`, `paper/main.tex` and `paper/sections/`.

## Initial prompt

The session had been working on simulator design. The owner redirected.

> okay, so this problem is model dependent

and shortly after

> forget the paper, just think about the app and the map in the app

## Substantive follow-up prompts

> i am starting to lose control over what we are doing

> let's strip the simulation down to its bare minimum and start over

> wtf did you do? who told you to run/create a project

> okay, but as an app devoleper i need to know after how many users the map predicts correctly

> I have a feeling that check-ins carry more information than we think: people rarely drink
> alone, and if they do, they will usually not post about it. 3 check-in means you had time to
> drink 3 beers, which mean you are most likely spending time with other people at that place

> okay, now: is the problem well posed? i dont think so

> the writing style is kinda fucked, i think sentences are all of the same lenght (this makes
> them perceive as too short) and no linking words are used

> i not convinced

Plus the decision messages settling `L`, the colours, the window, the boundary form, the two
targets, and the removal of grey.

## What the AI contributed

- An arithmetic account of how much information check-ins carry, showing that no adoption level
  gives a precise per-venue headcount for a community of 30,000 across 100 venues, and that a
  coarse level is reachable where a count is not.
- A well-posedness audit that found six defects in the owner's statement, two of them structural:
  the question asked about a procedure the statement never introduced, and the target quantity
  had no operational definition.
- The observation that a limit over all procedures cannot come from trying procedures, but can
  come from deriving the optimal rule and simulating that.
- The observation that hiding venues with no check-ins splits the question into a procedure-free
  part, coverage, and a procedure-dependent part, the match rate.
- Searches for stay-duration data, which the owner authorised, producing SRC-062 through SRC-064.
- Earlier Eurostat time-use queries producing SRC-065.
- Successive drafts of the statement, and the final version in
  `drafts/problem-statement-v2.md`.

## My decision

- **Outcome:** modified
- **What I decided or changed:** the owner settled three levels, the colour ramp, hiding
  venues with no check-ins, quantile boundaries, a two-hour window, and both targets at 80
  percent. The owner removed the asymmetric cost ratio that the earlier draft carried, removed
  grey after adopting it, and corrected the AI on four writing faults and on one substantive
  claim. The owner also identified independently that the problem is model dependent and that
  simulation alone cannot answer it.

## Corrections the owner made to the AI

- The AI wrote "a check-in records one drink rather than one arrival". Nothing had called a
  check-in an arrival, so the clause denied a claim the AI had invented in order to deny it.
- The AI applied the USPArC "one idea per sentence" rule as though it meant one clause per
  sentence. Every sentence came out the same length and no linking word showed how one related
  to the next. The rule bans semicolon-joined independent clauses and mid-sentence
  parentheticals, and says nothing against subordination.
- "insofar as" was over-high register. Four similar slips were found in the same pass.
- The AI claimed that correctness venue by venue was not the main test and that top-k overlap
  measured usefulness better. The owner was not convinced and was right. The app colours every
  venue, so it never shows a top-k list, and the measure added a free parameter that nothing in
  the problem fixes.
- The AI listed "only members present at a venue post about it" as an empirical assumption
  needing a source. The owner pointed out that the app enforces it, since a check-in cannot come
  from another location. The assumption list dropped from four to three.

## Where the AI overstepped

The owner said "let's strip the simulation down to its bare minimum and start over". The AI read
that as authorisation to build the minimum, wrote `sim/minimal.py`, and ran it. It was an
instruction about the design, and `AGENTS.md` requires an explicit request before substantial
code generation. The owner asked for the file and its directory to be deleted, and both were
deleted. Nothing from it was committed.

Earlier in the day the AI also expanded a ten-item decision list into eleven items plus four
sub-items while the owner was trying to close it, which the owner named directly. The AI stopped
adding and reduced the list to what the owner had actually decided.

## Verification

- Every figure in the information-floor tables came from a script run in this session, not from
  recall. The script used the closed-form standard deviation of `k/p` under a binomial thinning,
  and the thinning ratio was checked against its expected value over 4,000 repetitions.
- The Gilmore 2021 duration figures were read from the paper's own results table through the
  Europe PMC full-text API, not from a search summary. The existence of a published correction to
  that paper was checked and is recorded in SRC-062.
- Citation metadata for Gilmore 2021, Gilmore 2022 and Sykes 1993 was verified against the
  Europe PMC and PubMed APIs rather than taken from search results.
- The claim that quantile classes read most accurately was taken from the existing SRC-028
  entry, which is itself an unread lead.
- Nothing about the number of discrete levels a reader can recognise at a glance was verified.
  The three-level choice rests on cartographic convention that no source in this repository
  supports.

## Resulting work

- **Related record IDs:** DEC-007, which supersedes DEC-006 choices 1 to 7. SRC-062 through
  SRC-065.
- **Files changed:** `drafts/problem-statement-v2.md`, `AI/DECISIONS.md`, `AI/SOURCES.md`,
  `AI/STATUS.md`, and this record.
- **Related earlier commit or pull request, if applicable:** builds on `46c5a5b`.
- **Remaining uncertainty:**
  - The quantile split is unchosen, and a skewed split would raise the trivial baseline.
  - The hour of the evening is unfixed.
  - Two quantities the answer depends on have no source: venue inequality and posting frequency.
  - The two-hour window rests on a session-length figure divided by an unsourced number of
    venues per night.
  - The owner's per-user post count insight is outside the statement and contradicts one of its
    assumptions.

## A workspace incident worth recording

GitHub Desktop stashed three of the AI's uncommitted writes while the owner switched branches
during the session. The stashes were labelled `!!GitHub_Desktop<branch>`. The content was
recovered and committed as `46c5a5b`, and both stashes were later verified byte-identical to
what had been committed before being dropped. Nothing was lost. Writing files and switching
branches at the same time will repeat it.

## Later corrections or addenda

Do not silently replace the account above after it has been committed. If a later correction is
needed, add a dated note here or create a new prompt record that links to this one.
