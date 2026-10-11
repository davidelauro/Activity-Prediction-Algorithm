# Question prompt: identifiability instead of an adoption threshold

Drafted 2026-10-11, not yet run. One of a set that looks for research questions the setting and
the logged literature support better than the current adoption-threshold question does. The
setting means every object, assumption and observation rule in
[`drafts/problem-statement-v2.md`](problem-statement-v2.md) except the paragraph beginning "Our
question is". The setting stays fixed. Only the question moves.

- **Goal:** find out whether the identifiability literature supports a question of the form
  "which functionals of tonight's occupancy vector are recoverable at all from zero-censored,
  heterogeneously thinned check-in counts" better than it supports a question of the form "what
  is the smallest adoption rate reaching 80 percent on both metrics".
- **Context:** the current question has two halves. One half asks for a number. The other half
  asks whether that number exists at all. `AI/STATUS.md` records that the analogy motivating the
  second half fails: `SRC-119` gives a closed-form threshold in a homophily index, but herd
  immunity blocks transmission paths while this project's metrics ask whether a venue holds a
  posting adopter, and nothing propagates through the social graph at display time. The
  existence half may therefore be an identifiability question rather than a threshold question.
  `AI/PROJECT.md` already records the baseline's own admission that the per-venue inclusion
  probability is not identifiable from the data the app holds.
- **Current understanding:** `SRC-014` reports nonidentifiability under heterogeneous detection
  and `SRC-015` reports conditions answering it. Both are `LEAD`. `SRC-013` gives a lower-bound
  estimator that exists because the point estimate does not. `SRC-073` is `CHECKED` and treats
  minimax estimation under binomial thinning, which is this setting's observation model. The
  working hypothesis, unverified, is that a theorem naming what cannot be recovered under
  unknown per-adopter and per-venue posting probability would answer the existence half exactly,
  while the threshold framing answers it only by analogy.
- **Desired deliverable:** read sources establishing what is and is not identifiable under
  heterogeneous, unknown thinning when the target is a rank or a quantile class rather than a
  count. State for each whether the result transfers to a target defined by tonight's own
  tercile boundaries. Then state plainly whether the identifiability framing is better
  supported, equally supported, or worse supported than the adoption-threshold framing, and on
  what evidence.
- **Constraints:** treat the 45 `CHECKED` sources as the literature we hold. Open the relevant
  `LEAD` before asserting that a question is unanswered, since 89 of the 137 logged sources are
  unread and a gap in our reading is not a gap in the literature. Searching outward for new
  sources is part of the job. Do not invent citations. Mark a new source `LEAD` until read. Do
  not recommend which question the project should adopt, and do not edit the problem statement.
  A negative answer is a real answer; report it.
- **Definition of done:** a short list of read sources, each with the pinpoint used, plus an
  explicit comparison of support for the two framings and a named first obstacle to the
  identifiability framing if one exists.
