# AI session: literature for Assumption 2, Assumption 3, and the every-procedure question

- **Date:** 2026-10-10
- **AI tool and interface:** Claude Code in the Claude desktop app
- **Visible model name, if shown:** Sonnet 5 for the first part of the session, Opus 5 from the
  point where the owner switched models partway through
- **Branch:** problem/adoption-threshold
- **Purpose:** run the three search prompts drafted earlier the same day, then follow up on
  whether posting probability depends on the venue, which the first round put in doubt.
- **Files or sources provided to the AI:** `AGENTS.md`, `drafts/problem-statement-v2.md`,
  `paper/sections/03-problem-statement.tex`, `AI/STATUS.md`, `AI/SOURCES.md`, `AI/DECISIONS.md`,
  and the three drafted prompts `drafts/search-prompt-posting-probability.md`,
  `drafts/search-prompt-friend-colocation.md`, `drafts/search-prompt-minimax-framework.md`.

## Initial prompt

> run literature review prompts in parallel

## Substantive follow-up prompts

> why do we need to set hour of the evening?

> venue independence/dependence posting probability literature search now

> do a literature search about individual across venue posting distribution, i need new ideas for
> assumption number 2

The owner interrupted a message that began "okay, let's go over assumption 2 again" and replaced
it with the venue-dependence search. Assumption 2 itself was not revised in this session.

## What the AI contributed

Claude Code ran seven background search agents in three waves and reported their findings. Each
agent was instructed to read sources directly, to mark a source `CHECKED` only after reading the
relevant full text, to fabricate no citation or statistic, and to edit no file. The agents that
touched the choice of framework or of mechanism were explicitly barred from recommending one,
since `AGENTS.md` reserves those choices for the owner.

- Wave one, the three drafted prompts: per-adopter posting probability, colocated-friend posting
  dependency, and frameworks for a bound over every procedure.
- Wave two, after the first wave found evidence against venue-independence: observational evidence
  on venue dependence, and the check-in motivation literature.
- Wave three, on the owner's request for ideas: the within-person across-venue distribution, and
  candidate formalisms for a probability indexed by both person and venue.

Claude Code then wrote the source records in this commit, flagged three results as more important
than the rest, and offered one reframing of the question behind Assumption 2.

Three findings are negative and they are the substantive result of the session. No source measures
a bounded per-visit posting probability as a distribution across individuals. No source gives a
quantitative mechanism for colocated friends posting dependently. No source holds a user fixed,
restricts to bars, and measures posting probability from one bar to the next.

Claude Code also caught one citation error in the literature. `SRC-089` asserts that nightlife
venues are underrepresented in check-in datasets and cites Wang et al. 2016 for it, and Wang et
al. contains no such measurement. That is the exact claim this project would most like to be true.

## My decision

- **Outcome:** still under review
- **What I decided or changed:** nothing in the model. Assumption 2 stands as written in
  `drafts/problem-statement-v2.md` and `paper/sections/03-problem-statement.tex`. This commit adds
  source records only. The owner asked for the literature to be committed and pushed, and reviewed
  the entries before they landed.

## Verification

- Every `CHECKED` entry records which sections the agent read and states that the owner has not
  read the source. Nothing in this commit claims the owner verified anything.
- Every source that could not be opened is marked `LEAD` with the exact failure recorded: HTTP 403
  for `SRC-076`, `SRC-096`, `SRC-106` and Agresti, a refused connection for `SRC-097`, and a
  paywall for `SRC-070`.
- Pinpoints that rest on a second-hand attribution are labelled as such. `SRC-067` takes its lemma
  numbers from `SRC-069` rather than from the chapter. `SRC-106` takes its model statement from
  `SRC-107`, the software documentation, rather than from the paper.
- `SRC-074`, `SRC-075`, `SRC-110` and `SRC-111` record citations whose contents nobody has
  verified, and each says plainly that no result from it may be cited yet.
- Claude Code checked the new sources against the existing index before assigning IDs. Four were
  already logged, which prevented four duplicate entries: `SRC-001` Brown et al. 2014, `SRC-009`
  Royle 2004, `SRC-010` Barker et al. 2018, and `SRC-020` Lambert 1992. `SRC-016`, already logged,
  is a beta-binomial correlated-detection source and bears on the formalism question.
- `SRC-001` was promoted from `LEAD` to `CHECKED` because an agent read it in full.
- `SRC-095` was corrected inside this session. The motivation agent reached only the authors' talk
  deck and Claude Code wrote the entry as `LEAD` on that basis. A later agent opened the full text,
  so the entry was rewritten as `CHECKED` before the commit, and it records that it supersedes the
  earlier attempt.
- Not verified: `SRC-079`'s journal publication details, the full author lists of `SRC-085`,
  `SRC-100` and `SRC-101`, and the package version behind `SRC-107`. Each entry says so.

## Resulting work

- **Related record IDs:** `SRC-066` through `SRC-111` added. `SRC-001`, `SRC-094` and `SRC-095`
  updated. Bears on Assumption 2 and Assumption 3 of `drafts/problem-statement-v2.md`, and on the
  undecided framework behind the every-procedure phrasing.
- **Files changed:** `AI/SOURCES.md`, `AI/STATUS.md`, and this record.
- **Related earlier commit or pull request, if applicable:** the three prompts were drafted in
  `b01278f` and `ad88c1d`.
- **Remaining uncertainty:** Assumption 2's venue-independence clause is not settled. The
  motivation literature attaches posting to venue attributes that vary between bars, and the
  observational literature measures venue-level effects across categories, while the
  within-nightlife case has never been tested. No variance decomposition separating a venue
  component from a user component exists in any source found. The framework for the every-procedure
  claim is unchosen, and six of its prerequisites are unsettled; see `AI/STATUS.md`.

## Later corrections or addenda

Do not silently replace the account above after it has been committed. If a later correction is
needed, add a dated note here or create a new prompt record that links to this one.
