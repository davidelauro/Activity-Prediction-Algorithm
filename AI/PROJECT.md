# Project memory

This file holds the stable facts a new session needs to understand the project. Keep it short.
Update it only when the project question, scope, conventions, or file structure changes.

## Project identity

- **Working title:** Venue activity prediction, beating an AI-designed baseline
- **Author:** solo project
- **Course project sheet:** none. The workflow adapts TU Delft's WI4465 (Random Graphs) student
  project template. This project is not a submission for that course.
- **Primary orientation:** hybrid (theory and simulation)
- **Optional modules in use:** `EXPERIMENTS.md` and `PROOF_STATUS.md`. `DATA.md` is not in use.
  The project has no external dataset; a synthetic simulation generates every input in-repo.

## Research question

Can a new venue-activity model, fit and evaluated against a fully synthetic simulation with
known ground truth, substantially outperform an earlier heuristic model? The simulation
generates Poisson-process arrivals over a fake venue map and a synthetic social graph. The
earlier model, `sql/activity_score.sql` (see [`MODEL.md`](../MODEL.md)), was designed entirely
by an AI, without a simulation to validate it against.

The mathematical framework for the new model is not yet chosen. The AI-audit workflow in this
repository comes from a random-graphs course, but that is the source of the workflow, not a
commitment about the model's method. The owner picks the framework, and this file will name it
once chosen, rather than assume it in advance.

## Planned contribution

- **Known result or phenomenon to understand or reproduce:** the baseline's own claimed
  properties: concave group-size weighting, a diversity correction, conditional-survival decay,
  Bayesian shrinkage, and an N-adaptive regime. Understanding these properties sets the exact
  target the new model needs to beat, and on which axis.
- **Core task:** design a new scoring and prediction model. Build a synthetic simulator that
  stands in for ground truth. Define a fair comparison metric against the baseline.
- **Chosen extension:** to be decided. The owner picks this once the baseline's failure modes
  are mapped out.
- **Activity parameters, confirmed 2026-10-09 (DEC-004):** headcount, groups, and familiarity.
  Momentum was proposed, then dropped without a stated reason. Familiarity is a known covariate
  computed from check-in history, not an uncertain quantity needing prediction the way headcount
  and groups are; see `AI/SOURCES.md`, `SRC-056`, for the computable metrics behind it.
- **What would count as a successful project:** the new model beats the baseline by a wide
  margin on the simulator's known ground truth, on a metric defined and justified before looking
  at results. This order avoids post-hoc metric shopping.

## Definitions and conventions

- "Baseline" always refers to `sql/activity_score.sql` and `MODEL.md`, frozen as they stand.
- "The community" means the app's own unknown target demographic, young adults who want to
  socialize with friends, not general venue attendance and not a known, closed set of registered
  users. Every parameter and every estimate in this project is scoped to the community, not the
  general public.
- "Ground truth" exists only inside the synthetic simulation. This project has no real-world
  check-in dataset. Any claim about real venues is out of scope.
- The project reuses the baseline's data shape unless a decision states otherwise: events as
  `(user, timestamp, venue)` triples, plus an accepted-friendship graph.

## Scope

### In scope

- A synthetic simulator: a fake venue map, a Poisson or other justified point-process arrival
  flow of simulated people, and a synthetic social or friendship graph with tunable structure.
- A new predictive or scoring model built on that simulated world.
- A rigorous, pre-registered comparison between the new model and the baseline.

### Out of scope

- Any real check-in or location data.
- Edits to the baseline model itself.

## Repository map

- **Report:** [`paper/main.tex`](../paper/main.tex), a LaTeX paper split into one file per
  section under `paper/sections/`. It compiles with `pdflatex` and `bibtex` directly, configured
  in `.vscode/settings.json`, since this machine's TeX distribution has no `latexmk`.
- **Code:** not started. The baseline reference lives in `sql/activity_score.sql`.
- **Data:** none. The simulation generates data at run time; the repository stores no data.
- **Generated figures or tables:** not started
- **How to reproduce the main result:** to be defined once the simulator and model exist

## Durable notes

- The baseline's own writeup is honest about a structural limit. Observed counts are a Poisson
  thinning of true activity by a per-venue inclusion probability, written ρ_v, that is not
  identifiable from the data the model has access to. A synthetic simulation sidesteps this
  limit by construction, because the simulation controls ρ_v. This construction is exactly what
  makes "outperform by a wide margin" a testable claim here. The same claim would not be
  testable on real data, where the structural limit would resurface.
