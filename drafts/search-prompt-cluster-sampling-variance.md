# Search prompt: variance inflation from cluster-correlated adoption

Drafted 2026-10-11, not yet run. Third companion prompt on the clustering extension, this one
scoped to statistical methodology rather than network theory or empirical app data.

- **Goal:** find the standard statistical treatment of variance inflation when a binary trait
  (here, adopter or not) is correlated within clusters (here, friend groups) rather than
  independent across individuals. Candidate areas: the design effect and intraclass correlation
  coefficient from cluster-randomized trial and survey-sampling methodology, and any existing
  connection in that literature to coverage or detection probabilities specifically, rather than
  only to mean estimation.
- **Context:** this is a more general, possibly more tractable framing of the same question the
  network-threshold prompt asks. Survey statisticians have a mature toolkit for "how much does
  clustering inflate the variance of an estimate," expressed as a design effect multiplying the
  naive variance. Whether that toolkit maps cleanly onto this project's coverage and match-rate
  targets, rather than onto a simple mean, is unverified.
- **Current understanding:** none specific to this project. The general design-effect concept
  (variance multiplies by roughly $1 + (\bar{m} - 1)\rho$ for cluster size $\bar{m}$ and
  intraclass correlation $\rho$, in the standard cluster-sampling formula) is well known
  textbook material, but applying it to this project's exact quantities has not been attempted
  and should not be assumed to transfer without checking.
- **Desired deliverable:** sources read directly confirming the design-effect formula and its
  assumptions, and any extension of it to detection or coverage probabilities rather than only
  to means, which is the part this project would actually need.
- **Constraints:** do not invent citations. Mark results `LEAD` until personally read. Do not
  apply the formula to this project's numbers as though verified; flag any application here as
  this project's own extension, not a cited result, until checked. Feeds a candidate extension,
  not yet chosen (see `AI/PROJECT.md`).
- **Definition of done:** a verified statement of the design-effect formula and its standard
  assumptions, with an honest note on whether the literature extends it to coverage-style
  quantities or only to means.
