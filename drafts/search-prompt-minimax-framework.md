# Search prompt: framework for a bound over every procedure

Drafted 2026-10-10, not yet run. For the research question in
[`drafts/problem-statement-v2.md`](problem-statement-v2.md): "we put the match rate to every
possible procedure rather than to one." Proving a claim that holds for every procedure needs a
specific kind of mathematical tool, not yet chosen.

- **Goal:** find pointers to the standard frameworks for proving a performance bound that holds
  over every possible procedure (not for one named estimator), so the owner can choose one.
  Candidate areas: minimax risk in statistical decision theory, information-theoretic lower
  bounds (Fano's inequality, Le Cam's method), or anything else that fits a thinned,
  partially-observed count problem specifically.
- **Context:** the setting is closer to a detection or estimation-under-noisy-sampling problem
  than a standard classification benchmark: venues get ranked into terciles from a thinned,
  partially observed sample of an underlying count (true headcount), under the posting
  assumptions already fixed (Assumptions 1 to 3). Nothing has been derived yet; this prompt is
  purely a literature pointer, not a request to pick or apply a framework.
- **Current understanding:** no framework is chosen. `AGENTS.md` reserves this choice for the
  owner; this search should surface candidates and what each would require, not recommend one.
- **Desired deliverable:** a short list of relevant frameworks, each with what kind of
  assumption or setup it needs (for example, does it require knowing the sampling rate, does it
  need a loss function defined in advance), read from the actual sources, not a search summary.
- **Constraints:** do not invent citations. Mark results `LEAD` until personally read. Do not
  propose or imply a specific choice of framework; list candidates and their requirements only.
- **Definition of done:** a verified list of candidate frameworks with enough detail that the
  owner could pick one and know what deriving the optimal rule under it would require.
