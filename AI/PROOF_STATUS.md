# Proof status: theory module

This file tracks any theoretical claim behind the new model. Examples include properties of
whichever mathematical framework the owner chooses, convergence or consistency arguments, and
bounds relating the model's estimate to the simulator's ground truth. Keep each claim small
enough that its status can be checked. A fluent AI-generated proof is not automatically a proved
result.

## Status words

- `QUESTION`: not yet formulated as a precise claim
- `CONJECTURE`: precise but unsupported
- `HEURISTIC`: supported by informal reasoning only
- `PARTIAL`: some cases or steps are proved
- `CITED`: supported by a checked external result
- `PROVED`: a complete argument has been checked
- `DISPROVED`: a counterexample or contradiction was found
- `ABANDONED`: no longer part of the plan

Record the origin separately as `owner`, `source`, `AI`, or `combined`.

## Claim index

| ID | Claim | Role in report | Mathematical status | Origin | Location |
|---|---|---|---|---|---|
| PRF-001 | Adoption rate must be known at inference time, given venue-dependence | lemma | HEURISTIC | combined | `AI/STATUS.md`, prerequisite 1 |

## Entry template

### PRF-___ Short claim name

- **Precise claim:**
- **Role:** main result / lemma / cited input / explanatory result
- **Assumptions and quantifiers:**
- **Mathematical status:**
- **Origin:** owner / source / AI / combined
- **Dependencies:** definitions, earlier claims, or checked sources
- **Proof or citation location:**
- **Checks performed:** boundary cases, counterexample search, line-by-line review, or an
  alternative argument
- **Known gap or risk:**
- **Last checked by and date:**
- **Related attempt, source, prompt, commit, or pull request:**

---

## Claims

Add detailed entries here.

### PRF-001 Adoption rate must be known at inference time, given venue-dependence

- **Precise claim:** from a single observation window, a venue's true headcount $N_v$ and the
  mechanism converting presence into a check-in cannot be separately identified from the
  observed check-in count alone, because that count's distribution depends on $N_v$ and the
  detection side only through their product (an occupancy-style model) or, for a count model
  such as N-mixture, through a combination that a flexible enough mixing distribution can
  partially untangle, at the cost of high sensitivity to which mixing distribution is chosen
  (already demonstrated: Poisson versus negative binomial swings a real worked example's
  estimate from 0.61 to 7.06, `SRC-009`). A covariate known to move only the detection side, not
  $N_v$, breaks this confound by comparing outcomes across different values of that covariate.
  Adoption rate is such a covariate, provided it does not correlate with true headcount. If the
  detection side is shared equally across every venue, an unknown shared adoption rate would
  cancel out for the purpose of ranking venues into terciles, since match rate depends only on
  relative order. But the venue-dependence evidence already logged (`SRC-082`, `SRC-086` through
  `SRC-088`, `SRC-091`, `SRC-092`, `SRC-094`) shows the detection side is not shared equally
  across venues, so that cancellation does not hold in general, and adoption rate must be known
  (or well estimated) at the moment a procedure runs, not only varied across calibration
  scenarios.
- **Role:** lemma, feeding the first of the six framework prerequisites in `AI/STATUS.md`
  ("is the thinning probability known to the procedure, or must a procedure estimate it").
- **Assumptions and quantifiers:** holds for a single simultaneous observation window, which is
  this project's actual operating condition. The non-identifiability half (single-visit
  occupancy-style confound) is close to a standard, provable fact about Bernoulli products. The
  fix-via-adoption-rate half assumes adoption rate does not correlate with true headcount. The
  failure-of-cancellation half rests on the already-logged venue-dependence evidence, not on a
  worked counterexample constructed for this claim specifically.
- **Mathematical status:** HEURISTIC. The core confound (a single Bernoulli trial identifies only
  a product of two probabilities, never the two factors) is standard and close to PROVED in
  substance, but has not been written out here as an explicit derivation for this project's
  exact model. The adoption-rate fix and the claim that venue-dependence defeats the
  ranking-only escape are both argued verbally in this session, not derived with an explicit
  likelihood or a constructed counterexample.
- **Origin:** combined. The owner asked whether the occupancy model's repeated-visit requirement
  was fixable and then asked directly whether this means adoption rate must be known; the AI
  worked out the identifiability argument and the venue-dependence counterargument in response.
- **Dependencies:** the N-mixture formalism (`SRC-009`), the occupancy model (`SRC-106`,
  `SRC-107`), the beta-binomial extension (`SRC-112`), and the full venue-dependence source set
  (`SRC-082`, `SRC-086` through `SRC-088`, `SRC-091`, `SRC-092`, `SRC-094`).
- **Proof or citation location:** this session's chat record, 2026-10-10, continuing
  `AI/PROMPTS/2026-10-10-assumption-2-literature.md`. No standalone written derivation exists yet.
- **Checks performed:** none beyond the verbal argument itself. No boundary case, worked
  numerical example, or explicit counterexample has been constructed.
- **Known gap or risk:** the single-visit confound itself could be tightened into a short formal
  derivation and promoted toward PROVED. The adoption-rate fix has not been checked against an
  explicit model with simulated data to confirm it actually identifies the parameters it claims
  to, rather than merely making the confound plausible to escape. The claim that venue-dependence
  defeats ranking-only cancellation is argued qualitatively; a worked example with a specific
  venue-dependent detection term would make it checkable rather than asserted.
- **Last checked by and date:** not checked, only derived. 2026-10-10.
- **Related attempt, source, prompt, commit, or pull request:** continues
  `AI/PROMPTS/2026-10-10-assumption-2-literature.md`.
