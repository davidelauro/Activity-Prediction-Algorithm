# Experiment record: simulation module

This file tracks the simulation side of the project: the synthetic map, the Poisson arrival
flow, the social graph, and any experiment run against them. Write the important choices down
before running a large experiment. Add the result afterward. This order keeps a planned test
separate from a story invented after seeing the plot.

Use IDs `EXP-001`, `EXP-002`, and so on.

## Experiment index

| ID | Question | Observable | Main parameter range | Status | Output |
|---|---|---|---|---|---|
| EXP-001 | | | | planned / run / checked / abandoned | |

## Entry template

### EXP-___ Short title

#### Before running

- **Question or hypothesis:**
- **Graph or process model:**
- **Observable or finite-size estimator:**
- **Sizes and parameter values:**
- **Number of repetitions:**
- **Sources of randomness:** graph / process / sampling / other
- **Seed rule:**
- **Control, baseline, or null model:** the baseline model in `sql/activity_score.sql` serves as
  the standing control for every comparison in this project.
- **Small exact case or sanity check:**
- **Stopping rule or runtime limit:**
- **Code and planned output locations:**

#### After running

- **Date and environment:** Python and important package versions
- **Result:**
- **Uncertainty shown:**
- **Finite-size or boundary effects:**
- **Validation result:**
- **Failures, warnings, or negative results:**
- **Interpretation supported by the experiment:**
- **Claims not supported by the experiment:**
- **Decision or next experiment:**
- **Related attempt, source, prompt, commit, or pull request:**

---

## Experiments

Add detailed entries here.
