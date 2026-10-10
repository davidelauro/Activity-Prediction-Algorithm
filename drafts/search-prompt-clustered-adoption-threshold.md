# Search prompt: diffusion/epidemic thresholds under clustered adoption

Drafted 2026-10-11, not yet run. For the candidate extension raised this session: adoption is
likely to cluster along the social graph (friend-to-friend spread) rather than fall as a
uniform random sample of the community, and this plausibly raises the adoption rate needed to
hit the 80/80 targets, not just adds noise around the same threshold.

- **Goal:** find the standard literature on how a diffusion, contagion, or epidemic threshold
  changes when the "infected," "immune," or "adopting" set is clustered or assortative on a
  network, compared to a uniform random set of the same size. Candidate areas: network
  epidemiology (herd immunity under assortative mixing, $R_0$ under clustering), bond or site
  percolation on networks (giant-component thresholds under correlated occupation), and
  threshold models of social contagion (Granovetter-style threshold diffusion, network-based
  extensions of the Bass diffusion model).
- **Context:** the problem statement already treats adoption rate as a single aggregate
  percentage with no stated model for which members it selects, and Assumption 3 already treats
  colocated friends as dependent. Clustered adoption would mean a colocated company is more
  likely to be mostly-adopters or mostly-non-adopters together, which changes the variance of
  what a venue's check-ins look like at a fixed overall adoption rate.
- **Current understanding:** no formal model exists yet. The working hypothesis, not verified,
  is that clustering raises variance in observed check-ins at a fixed adoption rate, and higher
  variance at a fixed signal level generally demands a higher adoption rate to hit the same
  accuracy target. This is an analogy to herd-immunity threshold shifts under clustering, not a
  result derived for this project's own setup.
- **Desired deliverable:** sources read directly, not from a search summary, that give a
  quantitative relationship between clustering strength (an assortativity coefficient, an
  intraclass correlation, a percolation correlation length, or similar) and a diffusion or
  coverage threshold, ideally with a closed form or a clearly stated condition for when
  clustering helps versus hurts, since the direction is not actually obvious in every such model.
- **Constraints:** do not invent citations. Mark results `LEAD` until personally read. Do not
  propose or imply which framework this project should adopt; list candidates and their
  requirements. This is scoped to a candidate extension, not yet chosen as the project's
  extension (see `AI/PROJECT.md`, "Chosen extension: to be decided"), so nothing here commits
  the project to this direction.
- **Definition of done:** a short list of verified sources giving a quantitative, not just
  qualitative, account of how clustering shifts a diffusion or coverage threshold, stating
  plainly if the literature disagrees on direction or magnitude.
