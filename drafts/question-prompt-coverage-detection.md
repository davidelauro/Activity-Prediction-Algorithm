# Question prompt: coverage as a detection guarantee, posed as its own question

Drafted 2026-10-11, not yet run. One of a set that looks for research questions the setting and
the logged literature support better than the current adoption-threshold question does. The
setting means every object, assumption and observation rule in
[`drafts/problem-statement-v2.md`](problem-statement-v2.md) except the paragraph beginning "Our
question is". The setting stays fixed. Only the question moves.

- **Goal:** find out whether the surveillance and detection literature supports a question of
  the form "what guarantees that every busy-or-packed venue emits at least one check-in, under a
  clustered adopter set and adopter- and venue-dependent posting" better than it supports the
  joint 80/80 adoption-rate question.
- **Context:** coverage carries no procedure quantifier. A venue appears when anybody posted, so
  the whole unresolved framework question in `AI/STATUS.md`, with its six prerequisites, does
  not touch coverage. That makes coverage answerable now and match rate answerable later. The
  current question binds them into one number and inherits the harder half's blockers.
- **Current understanding:** `SRC-133` is `CHECKED` and treats herd sensitivity as the
  probability of at least one positive, which is coverage in the setting's own terms. `SRC-134`
  is its unread primary source. `SRC-135` is `CHECKED` and parameterises a beta-binomial scheme
  by an intraclass correlation. `SRC-132` is unread and `AI/STATUS.md` states that the whole
  design-effect route to coverage turns on it, because a variance-based effective sample size
  does not reproduce the probability of a zero. `SRC-136` is the round's most promising unopened
  lead and joins occupancy modelling to cluster sampling. The working hypothesis, unverified, is
  that this literature answers the probability of a zero by explicit mixture model rather than
  by a multiplier, and that a coverage-only question therefore has machinery behind it that the
  joint question does not.
- **Desired deliverable:** read sources giving a computable guarantee on the probability that
  every one of a set of clusters yields at least one positive, under heterogeneous per-unit
  detection and within-cluster dependence. For each, state what it assumes about cluster sizes,
  about the dependence form, and about whether an undetected cluster leaves the sample or stays
  in it with a zero. Then state plainly whether a coverage-only question is better supported
  than the joint question, and what it gives up by dropping match rate.
- **Constraints:** treat the 45 `CHECKED` sources as the literature we hold. Open the relevant
  `LEAD`, starting with `SRC-132`, `SRC-134` and `SRC-136`, before asserting that a question is
  unanswered. Searching outward for new sources is part of the job. Do not invent citations.
  Mark a new source `LEAD` until read. Do not recommend which question the project should adopt,
  and do not edit the problem statement. A negative answer is a real answer; report it.
- **Definition of done:** a short list of read sources with pinpoints, a plain statement of
  whether the probability-of-a-zero machinery exists in computable form for clustered
  heterogeneous detection, and an explicit comparison of support against the joint question.
