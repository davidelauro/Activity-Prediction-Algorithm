# Question prompt: the display itself as the open question

Drafted 2026-10-11, not yet run. One of a set that looks for research questions the setting and
the logged literature support better than the current adoption-threshold question does. The
setting means every object, assumption and observation rule in
[`drafts/problem-statement-v2.md`](problem-statement-v2.md) except the paragraph beginning "Our
question is". This prompt is the one case where part of the setting is treated as open, because
two of its display rules are owner choices with no source behind them.

- **Goal:** find out whether the literature supports a question of the form "how many levels,
  and which boundary rule, serve a reader best at a given noise level" better than it supports a
  question about the adoption rate needed by a three-level tercile display.
- **Context:** `AI/STATUS.md` lists the choice of three levels under unverified claims, stating
  plainly that no source in this repository supports it and none was found. `DEC-010` settled
  terciles as equal thirds, which fixes the trivial baseline at 33 percent, and `DEC-009`
  dropped the one citation that had backed the boundary form. The current question takes both
  choices as given and asks for an adoption rate conditional on them. If the number of levels
  and the boundary rule are free, then the adoption rate is not one number but a frontier over
  display designs, and the design is the more interesting unknown.
- **Current understanding:** `SRC-028` through `SRC-031` are unread and concern class-break
  choice, category labels, and the misreading of category scales. `SRC-032`, `SRC-033`,
  `SRC-034` and `SRC-035` are unread and concern asymmetric and ordinal loss. No source in the
  record connects the number of display classes to the statistical recoverability of those
  classes, which is the connection this question needs. The working hypothesis, unverified, is
  that coarsening the display buys accuracy and loses usefulness, and that the tradeoff has a
  stated form somewhere in quantisation, rate-distortion, or coarse-classification theory.
- **Desired deliverable:** read sources that relate the number of output classes to achievable
  accuracy under a fixed noise level, and read sources that measure what a reader gains or loses
  from a finer scale. State for each whether the class boundaries are fixed or data-dependent.
  Then state plainly whether a display-design question is better supported than the current
  question, and name the cost of this direction, which is that it moves the project toward
  presentation and away from estimation.
- **Constraints:** treat the 45 `CHECKED` sources as the literature we hold. Open the relevant
  `LEAD` before asserting that a question is unanswered. Searching outward for new sources is
  part of the job. Do not invent citations. Mark a new source `LEAD` until read. Do not
  recommend which question the project should adopt, and do not edit the problem statement or
  any settled decision in `AI/DECISIONS.md`. Treating the display as open is a search
  instruction here, not a reopening of `DEC-010`. A negative answer is a real answer; report it.
- **Definition of done:** a short list of read sources with pinpoints, a plain statement of
  whether the class-count tradeoff has a quantitative form, and an explicit comparison of
  support against the current question.
