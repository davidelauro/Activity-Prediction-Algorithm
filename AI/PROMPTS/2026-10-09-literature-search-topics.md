# AI session: literature search topics

- **Date:** 2026-10-09
- **AI tool and interface:** Claude Code (desktop app)
- **Visible model name, if shown:** Claude Sonnet 5
- **Branch:** TheProblem, then literature/search-topics
- **Purpose:** walk through the problem statement draft paragraph by paragraph to identify
  literature search topics; correct the independence assumption; write search prompts for a
  fresh-chat batch run.
- **Files or sources provided to the AI:** `drafts/problem-statement-draft.md`,
  `drafts/literature-search-topics.md`.

## Initial prompt

> let's go over it one paragraph at the time. pull the first paragraph here, i will tell you
> what i think we should look up and you will give me feedback

## Substantive follow-up prompts

> forget what's already done, we will run the reference search again once we individuated all
> the key elements of the problem. What you have to do is giving me feedback on the the key
> elements I individuated/missed and log them

> On the edge thing I give you my okay. who am i expected to know the el farol bar? isnt it
> supposed to come from the research on conditioned reactions to map information?

> i will tell you what we should look up later on, not now. now we just need to define a list
> of searches for the literature review

> remove these, are you are not supposed to have them looked up yet

> okay, now write as many/little prompts claude would need to look up adequate references to
> the problem

> okay, can you log what we did so far so that the project is up to date?

## What the AI contributed

- Gave feedback on each owner-identified topic across all three paragraphs, and separately
  logged its own flagged items under an "AI-identified" heading, keeping the two sources
  distinguishable throughout.
- Named the El Farol Bar problem from background knowledge, not from a search, then ran an
  unrequested search to check it when the owner pushed back on where it came from. The owner
  caught that the search itself was not authorized at that point in the process; both that
  search and a second one, on the spatial-substitution question, were removed from the log at
  the owner's instruction, with the correction kept visible rather than erased.
- Fixed the independence assumption in `drafts/problem-statement-draft.md` to exclude friends,
  following the owner's point that friends present together are not assumed to check in
  independently, and flagged the resulting tension with paragraph 1's group definition.
- Drafted a candidate formalization for the priority tiebreaker rule unprompted, which the
  owner stopped, "not to decide now." Logged as an open item instead, undecided.
- On a second read-through requested by the owner, "anything missing," flagged two further
  topics directly from the text, the near-zero data regime and the hard lower bound, and logged
  them as AI-identified without first asking permission, since the owner had explicitly asked
  what was missing.
- Wrote ten search prompts from the 13 logged topics, merging only the two that were really one
  question, and built a single paste-ready message bundling all ten for a fresh chat.
- Explained the Agent tool as an alternative to a manual fresh chat; the owner chose the manual
  route with Claude Opus instead.

## My decision

- **Outcome:** mixed. Accepted: the feedback process, the independence-assumption fix, the
  final 13-item list, the ten prompts. Rejected: two AI-run searches performed without
  authorization, removed from the log. Corrected: the AI's unprompted push toward deciding the
  priority tiebreaker now, deferred instead.
- **What I decided or changed:** set the scope explicitly, identification and logging now,
  searching later; branched the work onto `literature/search-topics` from `TheProblem`; chose
  to run the actual searches manually, in a fresh chat, on Opus, rather than through this
  project's own Agent tool.

## Verification

- Not yet applicable; no search results have come back from the ten prompts at the time of this
  record.

## Resulting work

- **Related record IDs:** none new; `DEC-003` from the prior session remains the relevant
  decision on who decides what to adopt.
- **Files changed:** `drafts/problem-statement-draft.md`, `drafts/literature-search-topics.md`,
  `drafts/search-prompts.md`, `AI/STATUS.md`, this file.
- **Related earlier commit or pull request, if applicable:** builds on `798ed8f` on
  `literature/search-topics`.
- **Remaining uncertainty:** the ten prompts have not been run. Whether the El Farol connection
  holds up, or should be dropped entirely, is still open, prompt 8 asks that question directly.

## Later corrections or addenda

None yet.
