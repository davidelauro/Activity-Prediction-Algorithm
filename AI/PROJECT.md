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

Can a usable level-assignment algorithm, fit and evaluated against a fully synthetic simulation
with known ground truth, substantially outperform an earlier heuristic model? The algorithm
assigns each venue one of three levels from app check-in data. The simulation generates
Poisson-process arrivals over a fake venue map and a synthetic social graph. The earlier model,
`sql/activity_score.sql` (see [`MODEL.md`](../MODEL.md)), was designed entirely by an AI, without
a simulation to validate it against.

`DEC-013` fixed the project's framing on 2026-10-11. The project pursues its application gap,
meaning that no such algorithm exists to test, and it claims no theory gap. The problem statement
in [`drafts/problem-statement-v2.md`](../drafts/problem-statement-v2.md), settled under `DEC-007`,
remains the description of the setting. The adoption-threshold question it poses is no longer the
headline; it becomes the deployment question of whether a given night carries enough signal to
display anything at all.

The mathematical framework for the algorithm is not yet chosen. The AI-audit workflow in this
repository comes from a random-graphs course, but that is the source of the workflow, not a
commitment about the method. The owner picks the framework, and this file will name it once
chosen, rather than assume it in advance.

Two choices gate the build and neither is settled. Whether the algorithm estimates occupancy and
then cuts it into terciles, or assigns levels directly. And whether its tercile boundaries come
from all open venues or only from the venues it can see.

## Planned contribution

- **Known result or phenomenon to understand or reproduce:** under `DEC-014` the baseline is no
  longer the target to beat, so the following is background on a frozen prior attempt rather than
  a specification of the goal. The baseline's own claimed properties: concave group-size
  weighting, a diversity correction, conditional-survival decay,
  Bayesian shrinkage, and an N-adaptive regime. Understanding these properties sets the exact
  target the new model needs to beat, and on which axis.
- **Core task:** design a new level-assignment algorithm. Build a synthetic simulator that
  stands in for ground truth. Define a fair comparison metric against the baseline, fixed before
  any result is read.
- **Chosen extension:** to be decided. The owner picks this once the baseline's failure modes
  are mapped out.
- **Activity parameters, confirmed 2026-10-09 (DEC-004):** headcount, groups, and familiarity.
  Momentum was proposed, then dropped without a stated reason. Familiarity is a known covariate
  computed from check-in history, not an uncertain quantity needing prediction the way headcount
  and groups are; see `AI/SOURCES.md`, `SRC-056`, for the computable metrics behind it.
- **What would count as a successful project:** the algorithm comes close to the optimal rule's
  match rate and coverage on the simulator's known ground truth, on a metric defined and
  justified before looking at results. This order avoids post-hoc metric shopping. `DEC-014`
  fixes three reference points: chance as the floor, computed at its realized value rather than
  assumed to be 33 percent; the naive rule the app would otherwise ship, meaning venues ordered
  by raw check-in count, by distinct posters, or by count divided by capacity; and the optimal
  rule as the ceiling. The frozen baseline `sql/activity_score.sql` is no longer the reference.
  The ceiling exists only inside the simulator, because the optimal rule needs the true occupancy
  distribution, and the writeup must say so.

## Definitions and conventions

- "Baseline" always refers to `sql/activity_score.sql` and `MODEL.md`, frozen as they stand.
  `DEC-014` removed it as the project's reference for success. Whether it is mentioned once in the
  writeup as a prior attempt or dropped from it entirely is unsettled.
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

- Any real check-in or location data. `DEC-013` flags this line for revisit, because a usable
  algorithm needs a calibration path to reality. The line stands until a later decision changes
  it, and nothing in the repository may assume the change.
- Edits to the baseline model itself.

### The central methodological threat

The same author builds the simulator and the algorithm, while the baseline was built without a
simulator. If the algorithm's assumptions match the simulator's generating process, then beating
the baseline is guaranteed and means nothing. Fixing the comparison metric before reading any
result is half the defence. The other half, whether the algorithm is tested outside the regime it
was built for, is undecided and is the owner's to settle. See `DEC-013`.

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
