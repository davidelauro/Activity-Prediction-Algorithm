# Question prompt: the censored display and its own boundaries

Drafted 2026-10-11, not yet run. One of a set that looks for research questions the setting and
the logged literature support better than the current adoption-threshold question does. The
setting means every object, assumption and observation rule in
[`drafts/problem-statement-v2.md`](problem-statement-v2.md) except the paragraph beginning "Our
question is". The setting stays fixed. Only the question moves.

- **Goal:** find out whether the selection, truncation and zero-inflation literature supports a
  question of the form "what does hiding every zero-check-in venue do to a quantile boundary
  computed on the venues that survive" better than it supports the adoption-threshold question.
- **Context:** the display hides a venue with no check-ins, and `AI/STATUS.md` records that the
  hidden venues are disproportionately the true-quiet ones. The tercile boundaries are then read
  off a sample that has lost its lower tail. The shown venues therefore do not split into equal
  thirds, the trivial baseline is no longer exactly 33 percent, and how far it moves with
  adoption rate is open. This question needs none of the three unsourced inputs the current
  question holds fixed, which are the hour of the evening, the inequality of spread, and the
  per-adopter posting rate.
- **Current understanding:** `SRC-104` is `CHECKED` and models exposure explicitly, which
  `AI/SOURCES.md` calls the closest match to this censoring. `SRC-016` and `SRC-020` are unread
  and concern correlated detection and zero inflation. `SRC-025` is unread and treats
  presence-only data as a thinned point process. `AI/STATUS.md` records that only `SRC-104` and
  `SRC-107` model a mechanism by which a true zero goes unobserved, and that both keep the unit
  in the sample instead of removing it from the display. The working hypothesis, unverified, is
  that the bias of a quantile estimated on a selection-truncated sample is a solved problem
  somewhere, and that naming it would turn an acknowledged gap into a self-contained question.
- **Desired deliverable:** read sources on the bias of a sample quantile under selection that
  depends on the latent variable being quantiled, and on estimators that correct it. State for
  each whether the selection probability must be known. Report whether any source treats a
  classification rule whose own thresholds are estimated from the selected sample, since that is
  the setting's exact structure. Then state plainly whether this question is better supported
  than the adoption-threshold question, and whether answering it is a prerequisite for the
  current question rather than a replacement for it.
- **Constraints:** treat the 45 `CHECKED` sources as the literature we hold. Open the relevant
  `LEAD` before asserting that a question is unanswered. Searching outward for new sources is
  part of the job. Do not invent citations. Mark a new source `LEAD` until read. Do not
  recommend which question the project should adopt, and do not edit the problem statement. A
  negative answer is a real answer; report it.
- **Definition of done:** a short list of read sources with pinpoints, a plain statement of
  whether the censored-quantile problem has a named treatment, and an explicit judgement on
  whether this is a replacement question or a sub-problem of the current one.
