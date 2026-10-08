# Attempt log

This log records substantial approaches, including failed and inconclusive ones. The log
prevents repeating the same dead end without a new idea. Small routine edits do not belong here.

Use IDs `ATT-001`, `ATT-002`, and so on.

## Entry template

### ATT-___ Short title

- **Date:** YYYY-MM-DD
- **Question or goal:**
- **Origin of the approach:** owner / source / AI / combined
- **Method tried:**
- **Outcome:** successful / partial / failed / inconclusive
- **Evidence:** proof notes, output files, plots, or checks
- **Obstacle or uncertainty:**
- **What we learned:**
- **Next step or new ingredient needed:**
- **Related decision, source, experiment, data, or proof IDs:**
- **Related prompt log, commit, or pull request:**

---

## Attempts

Add new entries above older entries. Do not erase a failed attempt.

### ATT-001 Baseline: fully AI-designed venue activity score

- **Date:** 2026-10-08 (the model predates this entry; this entry logs it retroactively as the
  baseline)
- **Question or goal:** score venues by how much activity is happening, using only check-in
  triples `(user, timestamp, venue)` and a friend graph.
- **Origin of the approach:** AI, entirely. See the `MODEL.md` introduction.
- **Method tried:** a session boundary set at a fixed local-time offset. Distinct-people counting
  per (venue, session) pair. A friend-graph transitive closure to form parties. A concave
  (square-root-of-size) weight per party. A Hill-number-of-order-2 diversity correction, shrunk
  toward the population mean. A Weibull conditional-survival time decay, instead of a plain
  exponential. Gamma-Poisson Bayesian shrinkage with an overdispersion correction. A single
  confidence-ramping parameter, θ, driven by the active-user count. One SQL function implements
  the whole model (`sql/activity_score.sql`).
- **Outcome:** successful as a production heuristic. Per `README.md`, the model ran in a live
  app. Even so, this model is the one to outperform: no one validated it against a known ground
  truth. It was validated only against intuition about what a good score should reward.
- **Evidence:** `MODEL.md` carries the reasoning, and `sql/activity_score.sql` carries the
  implementation. No simulated or real ground-truth comparison exists for it yet.
- **Obstacle or uncertainty:** the model's own writeup names its ceiling honestly. Observed
  counts form a Poisson thinning of true activity by a per-venue inclusion probability, ρ_v,
  that is not identifiable from the data the model has access to. Several of the model's
  parameters are hand-picked constants, not fit to anything: κ at about 1.8 and η at about 3.03
  hours for the Weibull decay, N_low at 20 and N_high at 40 for θ, and a β multiplier of 3 times
  versus 1 time.
- **What we learned:** a credible comparison needs a setting where ground truth is known. Hence
  the synthetic simulator, see `AI/PROJECT.md`. The simulator sidesteps the ρ_v problem by
  construction and turns the hand-picked constants above into something a new model can actually
  be checked against.
- **Next step or new ingredient needed:** build the simulator, tracked once defined as `EXP-001`,
  and build the new model. The owner leads both.
- **Related decision, source, experiment, data, or proof IDs:** DEC-001
- **Related prompt log, commit, or pull request:** the initial commit, `d7de60b`. This commit
  landed the baseline before this workflow existed.
