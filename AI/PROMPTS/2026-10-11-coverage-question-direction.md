# AI session: the shift to a coverage question over three graph layers

- **Date:** 2026-10-11
- **AI tool and interface:** Claude Code in the Claude desktop app
- **Visible model name, if shown:** Opus 5
- **Branch:** problem/adoption-threshold
- **Purpose:** record the direction change that followed the day's eight literature searches, and
  the problem statement it produced.
- **Files or sources provided to the AI:** `AGENTS.md`, `AI/PROJECT.md`, `AI/STATUS.md`,
  `AI/DECISIONS.md`, `AI/PROOF_STATUS.md`, `AI/SOURCES.md`, `drafts/problem-statement-v2.md`, and
  the reports of the eight searches recorded in
  `AI/PROMPTS/2026-10-11-question-relocation-results.md`.

## Initial prompt

> okay, I want the new problem statement written down logged committed and pushed. we can take
> operational decisions tomorrow

That instruction closed the session. The decisions it records were taken across the conversation
that preceded it, in the owner's own words below.

## Substantive follow-up prompts

The owner's decisive turns, in order:

> okay, let's go with the application gap

> i don't want to use the shitty AI algorithm as a reference

> new idea: what network properties should the app users have to be able to reach 90%?

> okay, point it at coverage then

> social network is a subset of the community newtork / subgraph

> okay, for a given, are there properties of G that push coverage and levels in opposite
> directions?

> from a fixed 80% coverage we will get A. from A we let G vary to find effects on predictions

> okay, so the only clean way out is to defend A = G

## What the AI contributed

Claude Code examined each turn before carrying it out, as `AGENTS.md` requires, and the record of
that examination matters more than the prose it produced.

On the application gap: Claude Code set out the history of what had been called the gap, and
stated that the project never held a sharp theory gap, only a measurement gap and an application
gap. The owner chose the application framing, logged as `DEC-013`.

On dropping the baseline: Claude Code agreed the baseline was a soft target and proposed three
reference points in its place, a computed floor, the naive rule an app would otherwise ship, and
the optimal rule as a ceiling citable from the literature. The owner accepted, logged as
`DEC-014`.

On network properties: Claude Code flagged that the social graph had no path to coverage at all,
since the setting gave no co-attendance mechanism, and that this was the obstacle the
clustered-reach search had already named. The owner answered it by supplying the three layers.
Logged as `DEC-015`.

On the opposite-directions question: Claude Code answered that no property opposes, then gave a
per-venue mechanism, then withdrew that mechanism on its own audit. The withdrawal is recorded
under Verification below because it is the most important correction of the session.

On the experiment design: Claude Code reduced the owner's two-stage design to two parameters and
a curve, warned that the family of adopter sets hitting any target is astronomically large and
must be generated rather than enumerated, warned against parameterizing by anything close to
coverage itself, and identified that no measurement of the graph's value is possible until a rule
consumes the graph. The design is recorded in `AI/STATUS.md`.

On the information-complete case: Claude Code supplied the argument the owner's instinct needed.
Correlated posting can arise only between two co-present adopter friends, so a graph holding every
adopter-to-adopter tie holds the complete dependence structure. That makes the case a principled
idealization rather than a convenience, and the right first experiment because it is the best case
for any graph-using algorithm.

Claude Code then wrote `drafts/problem-statement-v3.md`, carrying version 2's setting across
verbatim and replacing only the question.

## My decision

- **Outcome:** accepted
- **What I decided or changed:** the application gap, the removal of the baseline as a reference,
  the coverage question, the three layers, and the information-complete case for the app's graph.
  Four operational choices are deliberately deferred to the next session and are listed in
  `AI/STATUS.md`: which study is the result, the coverage target, the co-attendance mechanism, and
  a rule that consumes the graph.

## Verification

- The setting prose in `drafts/problem-statement-v3.md` was checked mechanically against
  `drafts/problem-statement-v2.md` and is byte-identical, so no owner-authored sentence drifted
  while the question around it changed.
- One AI claim was made, audited and withdrawn inside the session. Claude Code asserted that a
  venue holding a dense clique of adopters is more likely to appear on the display, which would
  have put coverage and level accuracy in opposition. That conflated the number of adopters
  present with the friendship density among them. For fixed marginal posting probabilities,
  positive dependence raises the probability that nobody posts: five adopters each posting with
  probability one half give a 3 percent chance of silence when independent and 50 percent when
  perfectly correlated. So clique structure at a venue hurts visibility and hurts the level
  together, and no property was found that opposes the two. The owner had already said the
  direction was liked when the withdrawal came, so the correction changed a conclusion rather than
  a detail.
- No `PRF` entry was written. The surviving claim, that clustering of the adopter set makes venue
  outcomes bimodal rather than uniformly worse, was offered as `PRF-002` and the owner did not take
  it up. It is unlogged.
- No source record was written. Roughly sixty sources from the day's eight searches remain
  unlogged in `AI/SOURCES.md`, including every source behind the ceiling in `DEC-014` and behind
  the recoverability warning in version 3.
- Not verified: every claim in this session about what the literature contains rests on the eight
  agent reports, not on reading by Claude Code or by the owner. The Fithian transfer step, which
  version 3 carries as a threat, is unproved.

## Resulting work

- **Related record IDs:** `DEC-013`, `DEC-014`, `DEC-015`. Bears on `DEC-005`, now moot;
  `DEC-007`, whose setting is amended and whose question is retired; `DEC-010`; `DEC-012`; and
  `PRF-001`, whose confound reappears in the app's graph as a density multiplied by a recording
  probability.
- **Files changed:** `AI/DECISIONS.md`, `AI/PROJECT.md`, `AI/STATUS.md`,
  `drafts/problem-statement-v3.md`, `drafts/question-prompt-open-channel-2.md`,
  `AI/PROMPTS/2026-10-11-question-relocation-prompts.md`,
  `AI/PROMPTS/2026-10-11-question-relocation-results.md`, and this record.
- **Related earlier commit or pull request, if applicable:** `dbd829a` holds the seven prompts and
  their drafting record.
- **Remaining uncertainty:** no coverage figure has been computed, because the co-attendance
  mechanism is unsettled and clustering reaches coverage only through friends arriving together.
  No code exists in the repository. The clustering of the adopter set inside the community network
  has no external anchor in any source found.

## Later corrections or addenda

Do not silently replace the account above after it has been committed. If a later correction is
needed, add a dated note here or create a new prompt record that links to this one.
