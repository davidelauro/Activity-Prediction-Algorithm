# Question prompt: recovering tonight's ordering instead of hitting a match rate

Drafted 2026-10-11, not yet run. One of a set that looks for research questions the setting and
the logged literature support better than the current adoption-threshold question does. The
setting means every object, assumption and observation rule in
[`drafts/problem-statement-v2.md`](problem-statement-v2.md) except the paragraph beginning "Our
question is". The setting stays fixed. Only the question moves.

- **Goal:** find out whether the ranking, top-k recovery and ordinal-risk literature supports a
  question of the form "how much signal does it take to recover tonight's tercile partition of
  venues, or tonight's busiest k venues" better than it supports a question of the form "what
  adoption rate reaches an 80 percent match rate".
- **Context:** the setting's target is a rank position, not a count. The two boundaries are
  terciles of tonight's own occupancy distribution, so a venue's correct label depends on every
  other venue's occupancy. Errors are therefore coupled across venues. Match rate is an average
  over a random denominator, since zero-check-in venues leave the display, and `DEC-010` leaves
  the realized trivial baseline unquantified for that reason. A partition-recovery or top-k
  question states the same goal without a random denominator.
- **Current understanding:** `SRC-072` is `CHECKED` and gives ordinal risk over all measurable
  decision functions, which already supplies an every-procedure quantifier in the right
  geometry. `SRC-034` and `SRC-035` are unread and concern ordinal metrics and cost matrices.
  `SRC-032` is unread and concerns quantile loss as a consistent score. The ranking and top-k
  identification literature, including its sample-complexity results, is not in `AI/SOURCES.md`
  at all, so finding it is part of this task. The working hypothesis, unverified, is that
  recovery of an ordering has sharper and better-established lower bounds than an accuracy
  target on a censored display does.
- **Desired deliverable:** read sources giving sample-complexity or signal-strength conditions
  for recovering an ordering, a quantile partition, or a top-k set from noisy counts, with
  attention to whether the result survives heterogeneous noise across items and dependence
  within an item. Report whether any of them handles items that vanish from observation
  entirely. Then state plainly whether a recovery question is better supported than the match
  rate question, and whether the two are formally related.
- **Constraints:** treat the 45 `CHECKED` sources as the literature we hold. Open the relevant
  `LEAD` before asserting that a question is unanswered. Searching outward for new sources is
  part of the job, and is expected here, since this strand is thin in the record. Do not invent
  citations. Mark a new source `LEAD` until read. Do not recommend which question the project
  should adopt, do not choose its framework, and do not edit the problem statement. A negative
  answer is a real answer; report it.
- **Definition of done:** a short list of read sources with pinpoints, a statement of which
  recovery target the literature supports best, and an explicit comparison of support against
  the match-rate question.
