# AI session: literature for the clustered-adoption extension

- **Date:** 2026-10-11
- **AI tool and interface:** Claude Code in the Claude desktop app
- **Visible model name, if shown:** Opus 5
- **Branch:** problem/adoption-threshold
- **Purpose:** run the three search prompts the owner drafted on 2026-10-11 for the clustered
  adoption extension, which is a candidate extension and not yet chosen.
- **Files or sources provided to the AI:** `AGENTS.md`, `AI/STATUS.md`, `AI/SOURCES.md`,
  `drafts/problem-statement-v2.md`, and the three drafted prompts
  `drafts/search-prompt-clustered-adoption-threshold.md`,
  `drafts/search-prompt-app-adoption-network-structure.md`,
  `drafts/search-prompt-cluster-sampling-variance.md`.

## Initial prompt

> pull recent commits, then execute new literature review prompts

## Substantive follow-up prompts

> commit and push

No follow-up changed the direction of the searches. The owner reviewed the reported findings
between the three agent reports and the commit.

## What the AI contributed

Claude Code ran three background search agents in parallel, one per drafted prompt. Each agent was
instructed to read sources directly, to mark a source `CHECKED` only after reading the relevant
full text, to fabricate no citation or statistic, to edit no file, and to recommend no framework,
since the clustering extension is a candidate the owner has not chosen.

Claude Code added two requirements to the briefs that the drafted prompts did not state, both
following from the problem statement rather than from the prompts. First, the threshold agent was
told that the direction of the clustering effect must be reported with its conditions rather than
flattened, which the owner's own prompt had also asked for. Second, the threshold and
design-effect agents were both told that this project's binding constraint is coverage, meaning the
probability that a venue emits at least one check-in, which is a question about the probability of a
zero rather than about the variance of a mean. Both were told to look for cluster sampling applied
to presence-absence detection and to say plainly if that extension does not exist.

The empirical agent was additionally briefed on the homophily confound, and told to label every
number as observed clustering or as causal influence.

Claude Code then wrote the source records in this commit and reported three judgements to the owner:

- The usual methodological hierarchy inverts for this project. This project needs the observed
  clustering of the adopter set, not its cause, so the raw neighbourhood ratios in `SRC-113` and
  `SRC-115` bear on the question while the homophily-matched estimates answer a different one.
- The epidemic-threshold results are a weaker analogy than they appear. Herd immunity blocks
  transmission paths, while this project's coverage target asks whether each venue holds a posting
  adopter. Nothing propagates through the social graph at display time, so `R_0` has no evident
  counterpart and `SRC-119`'s closed form cannot be lifted across without inventing one. `SRC-123`
  is the closest real match because it measures sampling reach rather than transmission.
- The chain has a missing link. No source reports an assortativity coefficient, an intraclass
  correlation, or a modularity value for an adopter set on a social graph, which is exactly the
  parameter a design-effect calculation needs.

## My decision

- **Outcome:** still under review
- **What I decided or changed:** nothing in the model, and nothing about the extension. The
  clustering extension remains a candidate, and `AI/PROJECT.md`'s "Chosen extension" slot stays
  open. This commit adds source records only. The owner asked for the literature to be committed
  and pushed, and reviewed the reported findings first.

## Verification

- Every `CHECKED` entry records which sections the agent read and states that the owner has not
  read the source. Nothing in this commit claims owner verification.
- `SRC-132` was downgraded. The agent labelled Madden and Hughes (1999) as `CHECKED, abstract only`
  after the publisher returned HTTP 403. That does not meet this repository's bar, so the entry is
  recorded as `LEAD` and says so explicitly. This matters more than the other status calls, because
  that abstract carries the result most consequential for the extension: that the variance-based
  effective sample size does not reproduce the probability of a zero.
- `SRC-117` was downgraded for the same reason. The agent read only pages 1623 and 1624 of Aral and
  Walker (2011) and did not read the estimation tables.
- `SRC-137` is logged `REJECTED` as a citation rather than as a fact. The formula it states is
  correct, but it is a two-page letter in an unrelated specialty journal, and `SRC-127` and
  `SRC-128` both state the same result with their assumptions. It is logged so nobody re-finds the
  letter and cites it for want of a better reference.
- Sources read in preprint rather than published form say so: `SRC-114`, `SRC-123` and `SRC-124`.
- Claude Code checked the new sources against the existing index before assigning IDs and found no
  duplicates among them.
- An ID collision was caught and corrected before the commit. The owner had created `SRC-112` for
  the beta-binomial concept entry in the meantime, and Claude Code had drafted its own entries
  starting at `SRC-112`. The twenty-five new entries were renumbered to `SRC-113` through `SRC-137`,
  with their internal cross-references shifted and references to older entries left untouched.
  Index rows and entry headings were then checked to align with no gaps or duplicates.
- Not verified: the pinpoint page in `SRC-129`, the full citations behind `SRC-134`, the issue
  number of `SRC-126`, and the package version behind `SRC-133`. Each entry says so.

## Resulting work

- **Related record IDs:** `SRC-113` through `SRC-137` added. Bears on the clustered-adoption
  consideration logged in `AI/STATUS.md`, on Assumption 3, and on the coverage target in
  `drafts/problem-statement-v2.md`.
- **Files changed:** `AI/SOURCES.md`, `AI/STATUS.md`, and this record.
- **Related earlier commit or pull request, if applicable:** the three prompts were drafted in
  `4e3afe9`. The previous literature round is `3f2d0a3` and its record is
  `AI/PROMPTS/2026-10-10-assumption-2-literature.md`.
- **Remaining uncertainty:** the direction of the clustering effect is not settled in the
  literature, and the three assumptions that determine the sign are recorded under `SRC-120`,
  `SRC-121`, `SRC-122` and `SRC-124`. The parameter linking the empirical clustering figures to a
  variance or coverage calculation does not exist in any source found. Whether the design-effect
  route can reach a coverage target at all turns on `SRC-132`, whose body nobody has read.

## Later corrections or addenda

Do not silently replace the account above after it has been committed. If a later correction is
needed, add a dated note here or create a new prompt record that links to this one.
