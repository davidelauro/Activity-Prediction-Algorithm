# Literature search topics

Built up paragraph by paragraph from `drafts/problem-statement-draft.md`, owner-led. Once every
paragraph is covered, this list drives a fresh reference search, replacing the earlier one
recorded in `AI/SOURCES.md` under SRC-001 through SRC-008, which answered a different set of
questions and is not assumed to carry over.

## Paragraph 1

> A social app lets users post a check-in at a public venue. A check-in shares the user's
> location at that moment. A group is two or more users who mutually follow each other and
> check in at the same venue around the same time. The app shows all users a heat map of
> predicted current activity, with several discrete levels. People deciding where to go out
> react to the map in two opposite ways. Some are drawn to venues that look busy. Others avoid
> venues that look crowded.

### Owner-identified

- Check-in around the same time: the time window defining co-presence or a shared outing.
  Needs sharpening: window for grouping check-ins together, or window for how long a
  prediction stays valid.
- Discrete levels of activity: mapping a continuous estimate to a small number of display
  categories. Possibly a display choice, not a modeling question.
- Conditioned behaviour in response to map information: the feedback loop, the prediction
  changes the behaviour it predicts.
- Spatial model of the map, nearby venues as substitutes: venues close to each other plausibly
  draw from the same pool of people, "let's move to this other venue" when one looks full.
  Search direction: map and migration.

### AI-identified

- Mutual-follow as the defining tie for a group: the group is defined through reciprocal
  follow edges specifically, not one-directional ones. Lower priority.
- The El Farol Bar problem, unverified: named from background knowledge, not from a search.

## Paragraph 2

> The goal is to predict the number of people present at each venue right now. Only a small
> fraction of people check in. We assume each person present checks in independently, with the
> same probability for everyone. With very few check-ins or none, the map stays empty. An
> empty map cannot tell users where to go. Groups of friends receive priority only in how the
> map displays venues, not in the predicted number itself. We leave venue capacity for later
> work, once venues can provide it themselves.

### Owner-identified

- How to estimate population size from a sparse sample. Well-posed; maps onto capture-recapture
  and abundance-under-imperfect-detection style literature.
- Friends do not check in independently: the independence assumption now excludes friends in
  the draft. Search direction: detection or sampling models with correlated or clustered
  probability within a known social tie, rather than independent-and-identical detection
  generally.
- Open item, not formalized: the priority tiebreaker among venues at the same heat level,
  including whether the friend-presence check is personalized per viewer or global. See
  `drafts/problem-statement-draft.md`.

### AI-identified

- The empty-map case specifically: "with very few check-ins or none, the map stays empty" is a
  near-zero data regime, distinct from the general sparse-sample item above. Search direction:
  shrinkage toward a prior under scarce data, zero-inflated count models, the cold-start
  problem.

## Paragraph 3

> No real check-in data exists. We will simulate both real presence and check-ins, with
> check-ins as a subset of real presence. A prediction is good if the map shows each venue at
> the right heat level. We prefer underestimating over overestimating. The number of distinct
> people who have checked in sets a lower bound: the prediction never goes below it.

### Owner-identified

- Simulations with subsets of real data: simulate the full real presence first, then simulate
  the thinning process that produces check-ins from it. Connects to paragraph 2's
  population-estimation item, the simulation side of the same gap.
- How to measure the right heat level, and errors between levels, under an underestimating
  preference: an asymmetric or cost-sensitive loss for ordinal prediction, quantile-style loss
  being the closest match. Connects to paragraph 1's discrete-levels item, sharpened by the
  asymmetric cost.

### AI-identified

- The hard lower bound: "the prediction never goes below it," the distinct check-in count as a
  floor, constrains the estimator's functional form itself, before any discretization or
  scoring happens. Search direction: truncated or constrained estimation, rather than the
  asymmetric-loss item above, which is about scoring the output, not constraining it.
