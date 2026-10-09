# Source record

This file tracks papers, books, datasets, and software documentation that matter to the project.
A search result or an AI suggestion counts only as a lead until someone opens and checks the
source.

Suggested statuses are `LEAD`, `CHECKED`, `USED`, and `REJECTED`.

## Quick index

| ID | Short name | Type | Status | Main use |
|---|---|---|---|---|
| SRC-001 | Brown et al. (2014) | paper | LEAD | group check-in definition, one-hour colocation window |
| SRC-002 | Chorley et al. (2016) | paper | LEAD | the Untappd check-in dataset and its known biases |
| SRC-003 | Cho, Ver Steeg, Galstyan (2014) | paper | LEAD | per-venue Hawkes model for check-in bursts |
| SRC-004 | Daw and Pender (2019) | paper | LEAD | batch arrivals inflate occupancy variance |
| SRC-005 | Clement, Converse, Royle (2017) | paper | LEAD | two-stage group and member detection |
| SRC-006 | Timokhin, Sadrani, Antoniou (2020) | paper | LEAD | validating a popularity signal against ground truth |
| SRC-007 | Zhuang and Mateu (2019) | paper | LEAD | separating seasonality from self-excitation |
| SRC-008 | Yauck, Rivest, Rothman (2019) | paper | LEAD | capture-recapture on app-activation traces |
| SRC-009 | Royle (2004) | paper | LEAD | N-mixture models for population size from counts |
| SRC-010 | Barker, Schofield, Link, Sauer (2018) | paper | LEAD | N-mixture reliability critique |
| SRC-011 | Link, Schofield, Barker, Sauer (2018) | paper | LEAD | N-mixture robustness to small violations |
| SRC-012 | Pledger (2000) | paper | LEAD | finite-mixture capture-recapture for heterogeneity |
| SRC-013 | Chao (1987) | paper | LEAD | lower-bound population estimator under heterogeneity |
| SRC-014 | Link (2003) | paper | LEAD | nonidentifiability under heterogeneous detection |
| SRC-015 | Holzmann, Munk, Zucchini (2006) | paper | LEAD | identifiability conditions answering Link (2003) |
| SRC-016 | Martin, Royle, MacKenzie, Edwards, Kery, Gardner (2011) | paper | LEAD | beta-binomial correlated detection |
| SRC-017 | Draghici, Bonner, Challenger (2021) | paper | LEAD | correlation within known pair-bonds |
| SRC-018 | Guillera-Arroita, Ridout, Morgan, Linkie (2012) | paper | LEAD | clustered, non-independent detection |
| SRC-019 | Clayton, Kaldor (1987) | paper | LEAD | Poisson-gamma shrinkage for small-area counts |
| SRC-020 | Lambert (1992) | paper | LEAD | zero-inflated Poisson regression |
| SRC-021 | Schein, Popescul, Ungar, Pennock (2002) | paper | LEAD | the cold-start problem, defined |
| SRC-022 | Feldman, Cousins (1998) | paper | LEAD | intervals for counts with a known floor |
| SRC-023 | Rivest (2011) | paper | LEAD | lower-bound estimator with dependent lists |
| SRC-024 | Lewis, Shedler (1979) | paper | LEAD | thinning algorithm for Poisson processes |
| SRC-025 | Dorazio (2014) | paper | LEAD | presence-only data as a thinned point process |
| SRC-026 | Lahoz-Monfort, Guillera-Arroita, Wintle (2014) | paper | LEAD | simulate truth then detection, validation template |
| SRC-027 | Morris, White, Crowther (2019) | paper | LEAD | ADEMP framework for simulation studies |
| SRC-028 | Brewer, Pickle (2002) | paper | LEAD | class-break choice changes map reading accuracy |
| SRC-029 | Peters, Dieckmann, Vastfjall, Mertz, Slovic (2009) | paper | LEAD | category labels change decisions |
| SRC-030 | Budescu, Broomell, Por (2009) | paper | LEAD | IPCC probability categories misread |
| SRC-031 | Budescu, Por, Broomell, Smithson (2014) | paper | LEAD | category misreading across 24 countries |
| SRC-032 | Gneiting (2011) | paper | LEAD | quantile loss is the consistent asymmetric score |
| SRC-033 | Zellner (1986) | paper | LEAD | LINEX asymmetric loss |
| SRC-034 | Sakai (2021) | paper | LEAD | ordinal classification metrics do not capture asymmetry |
| SRC-035 | Kotsiantis, Pintelas (2004) | paper | LEAD | fixed cost-matrix ordinal classification |
| SRC-036 | Zambrano (2004) | paper | LEAD | El Farol formalized as a congestion externality |
| SRC-037 | Challet, Marsili, Ottino (2004) | paper | LEAD | El Farol as a minority game |
| SRC-038 | Simon (1954) | paper | LEAD | bandwagon and underdog reactions to forecasts |
| SRC-039 | Leibenstein (1950) | paper | LEAD | bandwagon versus snob demand |
| SRC-040 | Ben-Akiva, de Palma, Kaysi (1991) | paper | LEAD | real-time congestion info can backfire |
| SRC-041 | Perdomo, Zrnic, Mendler-Dunner, Hardt (2020) | paper | LEAD | performative prediction |
| SRC-042 | Fotheringham (1983) | paper | LEAD | competing-destinations spatial interaction model |
| SRC-043 | Ewing (1986) | paper | LEAD | critique of Fotheringham's competing destinations |
| SRC-044 | Pellegrini, Fotheringham (1999) | paper | LEAD | competing destinations applied to migration |
| SRC-045 | Timmins, Murdock (2007) | paper | LEAD | endogenous site congestion, closest real match |
| SRC-046 | Simini, Gonzalez, Maritan, Barabasi (2012) | paper | LEAD | radiation model, no crowding term |
| SRC-047 | Crandall, Backstrom, Cosley, Suri, Huttenlocher, Kleinberg (2010) | paper | LEAD | co-occurrence windows and tie probability |
| SRC-048 | Cho, Myers, Leskovec (2011) | paper | LEAD | explicit mutual-tie rule for group definition |
| SRC-049 | Pham, Shahabi, Liu (2013) | paper | LEAD | entropy-weighted co-occurrence, busy venues flagged |
| SRC-050 | Eagle, Pentland, Lazer (2009) | paper | LEAD | friendship inference from dense co-presence |
| SRC-051 | Arthur (1994) | paper | REJECTED | the original El Farol paper, not peer-reviewed |

## Entry template

### SRC-___ Short name

- **Status:** LEAD / CHECKED / USED / REJECTED
- **Full citation or dataset/software name:**
- **Stable link, DOI, or version:**
- **Checked by and date:**
- **Exact relevant location:** theorem, section, page, table, or documentation heading
- **What it supports:**
- **What it does not support or important limitations:**
- **Where it is used in the report or code:**
- **Related prompt log:**

For a dataset, also record the provider, the licence or terms, the access date, the exact files
used, and any restrictions. This project has no external dataset; the synthetic simulation
generates all input. This file is expected to stay mostly about theoretical references relevant
to whichever mathematical framework the model ends up using, a choice not yet made.

---

## Sources

All eight entries below surfaced from the three literature-review questions recorded in
`paper/sections/02-literature-review.tex`. Every one is still `LEAD`: downloaded, in some
cases, but not yet read and confirmed by the owner. None has been cited in the paper.

### SRC-001 Brown et al. (2014)

- **Status:** LEAD
- **Full citation or dataset/software name:** Brown, C., et al., "Group Colocation Behavior in
  Technological Social Networks," PLoS ONE, 2014.
- **Stable link, DOI, or version:** doi.org/10.1371/journal.pone.0105816
- **Checked by and date:** downloaded 2026-10-09, not yet read
- **Exact relevant location:** defines a group check-in as friends colocated within a one-hour
  window
- **What it supports:** a precedent for the time-window size used to group check-ins into one
  outing
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `paper/literature/brown-et-al-2014.pdf` (gitignored, local only)

### SRC-002 Chorley et al. (2016)

- **Status:** LEAD
- **Full citation or dataset/software name:** Chorley, M. J., Rossi, L., Tyson, G., Williams,
  M. J., "Pub Crawling at Scale: Tapping Untappd to Explore Social Drinking," ICWSM, 2016.
- **Stable link, DOI, or version:** ojs.aaai.org/index.php/ICWSM/article/view/14724
- **Checked by and date:** downloaded 2026-10-09, not yet read
- **Exact relevant location:** the main prior empirical study of Untappd check-in data
- **What it supports:** known biases in Untappd check-ins, the same data shape this project's
  baseline assumes
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `paper/literature/chorley-et-al-2016.pdf` (gitignored, local only)

### SRC-003 Cho, Ver Steeg, and Galstyan (2014)

- **Status:** LEAD
- **Full citation or dataset/software name:** Cho, Y.-S., Ver Steeg, G., Galstyan, A., "Where
  and Why Users Check In," AAAI, 2014.
- **Stable link, DOI, or version:** doi.org/10.1609/aaai.v28i1.8746
- **Checked by and date:** downloaded 2026-10-09, not yet read
- **Exact relevant location:** a per-venue Hawkes model separating self, social, and exogenous
  effects in check-in bursts
- **What it supports:** a direct precedent for modeling check-in clustering as self-exciting
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `paper/literature/cho-versteeg-galstyan-2014.pdf` (gitignored, local
  only)

### SRC-004 Daw and Pender (2019)

- **Status:** LEAD
- **Full citation or dataset/software name:** Daw, A., Pender, J., "On the Distributions of
  Infinite Server Queues with Batch Arrivals," Queueing Systems, 2019.
- **Stable link, DOI, or version:** doi.org/10.1007/s11134-019-09603-4 (arXiv preprint:
  arxiv.org/abs/1805.02117)
- **Checked by and date:** downloaded 2026-10-09, not yet read
- **Exact relevant location:** batch arrivals inflate occupancy variance relative to individual
  arrivals with the same mean
- **What it supports:** a formal reason group outings, not just average rate, drive peak
  activity
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `paper/literature/daw-pender-2019.pdf` (gitignored, local only)

### SRC-005 Clement, Converse, and Royle (2017)

- **Status:** LEAD
- **Full citation or dataset/software name:** Clement, M. J., Converse, S. J., Royle, J. A.,
  "Accounting for Imperfect Detection of Groups and Individuals When Estimating Abundance,"
  Ecology and Evolution, 2017.
- **Stable link, DOI, or version:** doi.org/10.1002/ece3.3284
- **Checked by and date:** not yet downloaded. Confirmed gold open access, CC-BY, but every
  automated attempt (PMC, Wiley direct) hit a Cloudflare bot challenge. Open
  onlinelibrary.wiley.com/doi/10.1002/ece3.3284 in a browser to get it by hand.
- **Exact relevant location:** a two-stage model, whether a group is detected at all, and how
  many of its members are
- **What it supports:** the closest formal match to "a group is seen if one friend checks in,
  its size is undercounted"
- **Where it is used in the report or code:** not yet used

### SRC-006 Timokhin, Sadrani, and Antoniou (2020)

- **Status:** LEAD
- **Full citation or dataset/software name:** Timokhin, S., Sadrani, M., Antoniou, C.,
  "Predicting Venue Popularity Using Crowd-Sourced and Passive Sensor Data," Smart Cities, 2020.
- **Stable link, DOI, or version:** doi.org/10.3390/smartcities3030042
- **Checked by and date:** not yet downloaded. Confirmed gold open access, CC-BY, but the MDPI
  PDF endpoint returned an Akamai access-denied page to every automated attempt. Open
  mdpi.com/2624-6511/3/3/42 in a browser to get it by hand.
- **Exact relevant location:** validates a popularity signal against an independent Wi-Fi-probe
  ground truth
- **What it supports:** a low-cost ground-truth recipe, relevant mainly as a contrast to this
  project's synthetic simulator, which fixes ground truth by construction instead
- **Where it is used in the report or code:** not yet used

### SRC-007 Zhuang and Mateu (2019)

- **Status:** LEAD
- **Full citation or dataset/software name:** Zhuang, J., Mateu, J., "A Semiparametric
  Spatiotemporal Hawkes-Type Point Process Model with Periodic Background for Crime Data,"
  Journal of the Royal Statistical Society Series A, 2019.
- **Stable link, DOI, or version:** doi.org/10.1111/rssa.12429
- **Checked by and date:** not yet downloaded. The journal itself is subscription-only; a
  green-open-access copy exists at an Oxford Academic PDF URL, but that URL also returned a
  Cloudflare challenge to every automated attempt. Try the DOI link in a browser, or search for
  an author-deposited copy, to get it by hand.
- **Exact relevant location:** separates a periodic seasonal background from genuine
  self-excitation in clustered event data
- **What it supports:** a caution against attributing check-in bursts to social mechanisms
  before ruling out plain daily or weekly seasonality
- **Where it is used in the report or code:** not yet used

### SRC-008 Yauck, Rivest, and Rothman (2019)

- **Status:** REJECTED, for now
- **Full citation or dataset/software name:** Yauck, M., Rivest, L.-P., Rothman, G.,
  "Capture-Recapture Methods for Data on the Activation of Applications on Mobile Phones,"
  Journal of the American Statistical Association, 2019.
- **Stable link, DOI, or version:** doi.org/10.1080/01621459.2018.1469991
- **Checked by and date:** not downloaded; confirmed closed access, no open copy found as of
  2026-10-09
- **What it does not support or important limitations:** cannot be read without institutional
  or paid access; revisit only if the capture-recapture angle turns out to matter enough to
  justify requesting it some other way
- **Where it is used in the report or code:** not used

---

SRC-009 through SRC-051 surfaced from the ten prompts in `drafts/search-prompts.md`, run
2026-10-09 in a fresh Opus chat per `DEC-003` and the addendum in
`AI/PROMPTS/2026-10-09-literature-search-topics.md`. The full writeup, with every finding stated
in prose and grouped by question, lives in `drafts/literature-review-results.md`; the entries
below are the citation record, not a duplicate of that prose. "Checked by and date" below
reports how closely that search read each source (full text, abstract and record, or secondary),
which is not the same as the owner personally checking it; every entry stays `LEAD` until the
owner does.

### SRC-009 Royle (2004)

- **Status:** LEAD
- **Full citation or dataset/software name:** Royle, J.A., "N-mixture models for estimating
  population size from spatially replicated counts," Biometrics 60(1):108-115.
- **Stable link, DOI, or version:** doi.org/10.1111/j.0006-341X.2004.00142.x
- **Checked by and date:** full text read by the 2026-10-09 search
- **Exact relevant location:** site counts as i.i.d. Binomial(N, p); choice of mixing
  distribution (Poisson vs negative binomial) swung a real example's abundance estimate from
  0.61 to 7.06
- **What it supports:** the core population-from-sparse-sample model; the N-mixture likelihood's
  sum over N starting at the largest observed count also enforces the hard lower bound
  automatically (question 4)
- **What it does not support or important limitations:** assumes one shared detection
  probability p per model; no individual heterogeneity
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-010 Barker, Schofield, Link, Sauer (2018)

- **Status:** LEAD
- **Full citation or dataset/software name:** Barker, R.J., Schofield, M.R., Link, W.A., Sauer,
  J.R., "On the reliability of N-mixture models for count data," Biometrics 74(1):369-377.
- **Stable link, DOI, or version:** doi.org/10.1002/biom.12734
- **Checked by and date:** abstract and record read by the 2026-10-09 search; publisher full
  text blocked the fetch
- **Exact relevant location:** uncontrolled variation in detection probability across visits is
  fatal to the model
- **What it supports:** a caution for SRC-009's core model
- **What it does not support or important limitations:** counts alone support only relative
  abundance, not absolute, without auxiliary data on detection probability. Since this
  project's check-ins carry user IDs, it sits on the better-identified side of this critique for
  the user population, but not for non-users at the venue.
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-011 Link, Schofield, Barker, Sauer (2018)

- **Status:** LEAD
- **Full citation or dataset/software name:** Link, W.A., Schofield, M.R., Barker, R.J., Sauer,
  J.R., "On the robustness of N-mixture models," Ecology 99(7):1547-1551.
- **Stable link, DOI, or version:** doi.org/10.1002/ecy.2362
- **Checked by and date:** abstract and record read by the 2026-10-09 search
- **Exact relevant location:** three specific small violations (double counting, unmodelled
  change in N or p over time) produce large bias undetected by goodness-of-fit tests
- **What it supports:** a list of specific failure modes to check for in an N-mixture
  implementation
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-012 Pledger (2000)

- **Status:** LEAD
- **Full citation or dataset/software name:** Pledger, S., "Unified maximum likelihood estimates
  for closed capture-recapture models using mixtures," Biometrics 56:434-442.
- **Stable link, DOI, or version:** not confirmed
- **Checked by and date:** secondary, seen only in another source's reference list, by the
  2026-10-09 search
- **Exact relevant location:** individuals split into a finite number of latent groups with
  different capture probabilities
- **What it supports:** one concrete way to relax the single-detection-probability assumption
  without going fully individual-level
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-013 Chao (1987)

- **Status:** LEAD
- **Full citation or dataset/software name:** Chao, A., "Estimating the population size for
  capture-recapture data with unequal catchability," Biometrics 43:783-791.
- **Stable link, DOI, or version:** not confirmed (issue number, DOI unconfirmed)
- **Checked by and date:** full text read by the 2026-10-09 search
- **Exact relevant location:** N-hat = S + f1^2/(2f2), derived via Jensen's inequality as a
  lower bound
- **What it supports:** directly answers question 4, the hard lower bound: the estimator is
  structurally the observed count plus a non-negative correction, so it cannot fall below what
  was actually counted
- **What it does not support or important limitations:** needs many occasions (5+ recommended)
  and small capture probabilities; author states it fails when average capture probability is
  relatively large
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-014 Link (2003)

- **Status:** LEAD
- **Full citation or dataset/software name:** Link, W.A., "Nonidentifiability of population
  size from capture-recapture data with heterogeneous detection probabilities," Biometrics
  59:1123-1130.
- **Stable link, DOI, or version:** not confirmed
- **Checked by and date:** secondary, title and pages confirmed in two reference lists, by the
  2026-10-09 search
- **Exact relevant location:** under individual heterogeneity, different mixing distributions
  fit equally well yet imply different population sizes
- **What it supports:** the structural limit this project needs to be honest about if
  detection probability is allowed to vary by individual
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-015 Holzmann, Munk, Zucchini (2006)

- **Status:** LEAD
- **Full citation or dataset/software name:** Holzmann, H., Munk, A., Zucchini, W., "On
  identifiability in capture-recapture models," Biometrics 62:934-939.
- **Stable link, DOI, or version:** not confirmed
- **Checked by and date:** full text read by the 2026-10-09 search
- **Exact relevant location:** answers SRC-014 directly: within a fixed family of mixing
  distributions, population size is identifiable, with specific conditions per family
- **What it supports:** a path around the SRC-014 limit, conditional on committing to one family
  of detection-probability distributions in advance
- **What it does not support or important limitations:** identifiability across different
  families (e.g. beta versus finite mixture) is not covered
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-016 Martin, Royle, MacKenzie, Edwards, Kery, Gardner (2011)

- **Status:** LEAD
- **Full citation or dataset/software name:** Martin, J., Royle, J.A., MacKenzie, D.I.,
  Edwards, H.H., Kery, M., Gardner, B., "Accounting for non-independent detection when
  estimating abundance of organisms with a Bayesian approach," Methods in Ecology and
  Evolution 2:595-601.
- **Stable link, DOI, or version:** doi.org/10.1111/j.2041-210X.2011.00113.x
- **Checked by and date:** abstract and record read by the 2026-10-09 search
- **Exact relevant location:** replaces the binomial detection step with a beta-binomial,
  estimating abundance, detection probability, and a correlation parameter together
- **What it supports:** the clearest answer to question 2, correlated detection; fitting a
  plain binomial to correlated data overestimated abundance even at moderate correlation
- **What it does not support or important limitations:** ties are not known in advance in this
  model; correlation is a single site-level parameter, not tied to a specific known relationship
  the way friendship is in this project
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-017 Draghici, Bonner, Challenger (2021)

- **Status:** LEAD
- **Full citation or dataset/software name:** Draghici, A., Bonner, S., Challenger, W.,
  "Understanding the impact of correlation within pair-bonds on Cormack-Jolly-Seber models,"
  Ecology and Evolution, PMC8207451.
- **Stable link, DOI, or version:** ncbi.nlm.nih.gov/pmc/articles/PMC8207451
- **Checked by and date:** abstract and record read by the 2026-10-09 search; full text
  rate-limited
- **Exact relevant location:** known pairs have correlated survival and recapture outcomes
- **What it supports:** the closest structural match found to this project's known-tie
  dependence case (friends, not anonymous pairs); ignoring the correlation gives too-small
  standard errors
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-018 Guillera-Arroita, Ridout, Morgan, Linkie (2012)

- **Status:** LEAD
- **Full citation or dataset/software name:** Guillera-Arroita, G., Ridout, M.S., Morgan,
  B.J.T., Linkie, M., "Models for species-detection data collected along transects in the
  presence of abundance-induced heterogeneity and clustering in the detection process,"
  Methods in Ecology and Evolution 3(2).
- **Stable link, DOI, or version:** doi.org/10.1111/j.2041-210X.2011.00159.x
- **Checked by and date:** abstract and record read by the 2026-10-09 search
- **Exact relevant location:** detections cluster rather than occurring independently
- **What it supports:** a second, independent confirmation that unmodelled clustering biases
  abundance estimates
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-019 Clayton, Kaldor (1987)

- **Status:** LEAD
- **Full citation or dataset/software name:** Clayton, D., Kaldor, J., "Empirical Bayes
  estimates of age-standardized relative risks for use in disease mapping," Biometrics
  43:671-681.
- **Stable link, DOI, or version:** not confirmed, seen only in software documentation
- **Checked by and date:** secondary, consistent across several R package docs, by the
  2026-10-09 search
- **Exact relevant location:** observed count is Poisson around expected times relative risk;
  risks share a gamma prior estimated from all areas
- **What it supports:** the most direct template for question 3, the near-zero data regime: a
  venue with zero or one check-in gets pulled hardest toward the population mean
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-020 Lambert (1992)

- **Status:** LEAD
- **Full citation or dataset/software name:** Lambert, D., "Zero-inflated Poisson regression,
  with an application to defects in manufacturing," Technometrics 34(1):1-14.
- **Stable link, DOI, or version:** not confirmed
- **Checked by and date:** full text read by the 2026-10-09 search
- **Exact relevant location:** each count is zero with probability p and Poisson(lambda)
  otherwise, both with their own covariates
- **What it supports:** on a real 81%-zero dataset, plain Poisson under-predicted zeros and a
  zero-inflated model fit better than a negative binomial
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-021 Schein, Popescul, Ungar, Pennock (2002)

- **Status:** LEAD
- **Full citation or dataset/software name:** Schein, A.I., Popescul, A., Ungar, L.H., Pennock,
  D.M., "Methods and metrics for cold-start recommendations," SIGIR 2002, pp. 253-260.
- **Stable link, DOI, or version:** doi.org/10.1145/564376.564421
- **Checked by and date:** abstract and record read by the 2026-10-09 search; no reachable full
  text
- **Exact relevant location:** defines the cold-start problem as recommending items nobody has
  rated yet
- **What it supports:** the term and framing for the "no check-ins yet" case, distinct from the
  general sparse-sample case
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-022 Feldman, Cousins (1998)

- **Status:** LEAD
- **Full citation or dataset/software name:** Feldman, G.J., Cousins, R.D., "Unified approach
  to the classical statistical analysis of small signals," Physical Review D 57(7):3873-3889.
- **Stable link, DOI, or version:** doi.org/10.1103/PhysRevD.57.3873 (arXiv:physics/9711021)
- **Checked by and date:** full text read by the 2026-10-09 search, arXiv version
- **Exact relevant location:** ranks a count by likelihood relative to max(0, n - known
  background), so confidence intervals never enter the impossible region
- **What it supports:** the closest treatment found for confidence intervals on a count with a
  known floor, directly relevant to question 4
- **What it does not support or important limitations:** when the observed count falls below
  the expected background, the resulting upper limit is lower than for an experiment seeing
  exactly the background; the authors flag this as troubling and recommend also reporting
  sensitivity
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-023 Rivest (2011)

- **Status:** LEAD
- **Full citation or dataset/software name:** Rivest, L.-P., "A lower bound model for multiple
  record systems estimation with heterogeneous catchability," International Journal of
  Biostatistics.
- **Stable link, DOI, or version:** doi.org/10.2202/1557-4679.1283
- **Checked by and date:** abstract only by the 2026-10-09 search; author and title from
  memory, Crossref lookup rate-limited, needs confirming
- **Exact relevant location:** generalises Chao's (SRC-013) lower bound to models with
  dependence between lists
- **What it supports:** a possible bridge between the lower-bound question and the
  correlated-detection question, if it holds up on a full read
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-024 Lewis, Shedler (1979)

- **Status:** LEAD
- **Full citation or dataset/software name:** Lewis, P.A.W., Shedler, G.S., "Simulation of
  nonhomogeneous Poisson processes by thinning," Naval Research Logistics Quarterly
  26(3):403-413.
- **Stable link, DOI, or version:** doi.org/10.1002/nav.3800260304
- **Checked by and date:** abstract and record read by the 2026-10-09 search; no reachable full
  text
- **Exact relevant location:** generate a dominating homogeneous Poisson process, then delete
  points with a controlled probability
- **What it supports:** the classic algorithm for question 5, simulating a thinned observation
  process; the same deletion step, with detection probability instead, produces simulated
  check-ins from simulated true presence
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-025 Dorazio (2014)

- **Status:** LEAD
- **Full citation or dataset/software name:** Dorazio, R.M., "Accounting for imperfect
  detection and survey bias in statistical analysis of presence-only data," Global Ecology and
  Biogeography 23(12):1472-1484.
- **Stable link, DOI, or version:** doi.org/10.1111/geb.12216
- **Checked by and date:** abstract and record read by the 2026-10-09 search
- **Exact relevant location:** treats observed presence records as a thinned version of a true
  spatial point process, validated with simulation and mathematical proof
- **What it supports:** a second template for the simulate-then-thin design, validated
  specifically
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-026 Lahoz-Monfort, Guillera-Arroita, Wintle (2014)

- **Status:** LEAD
- **Full citation or dataset/software name:** Lahoz-Monfort, J.J., Guillera-Arroita, G.,
  Wintle, B.A., "Imperfect detection impacts the performance of species distribution models,"
  Global Ecology and Biogeography.
- **Stable link, DOI, or version:** doi.org/10.1111/geb.12138
- **Checked by and date:** abstract and record read by the 2026-10-09 search
- **Exact relevant location:** simulates true occupancy, then imperfect detection, and scores
  models against the known simulated truth
- **What it supports:** a close template for this project's own validation design, since the
  synthetic simulator plays the same role, known truth to score against
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-027 Morris, White, Crowther (2019)

- **Status:** LEAD
- **Full citation or dataset/software name:** Morris, T.P., White, I.R., Crowther, M.J.,
  "Using simulation studies to evaluate statistical methods," Statistics in Medicine
  38(11):2074-2102.
- **Stable link, DOI, or version:** doi.org/10.1002/sim.8086 (arXiv:1712.03198)
- **Checked by and date:** full text read by the 2026-10-09 search, arXiv v3
- **Exact relevant location:** the ADEMP framework (aims, data-generating mechanisms,
  estimands, methods, performance measures); about 1,900 repetitions give a 0.5% Monte Carlo
  standard error on 95% coverage
- **What it supports:** a concrete reporting standard for the simulation study this project
  needs to run, including how many repetitions are enough
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-028 Brewer, Pickle (2002)

- **Status:** LEAD
- **Full citation or dataset/software name:** Brewer, C.A., Pickle, L., "Evaluation of methods
  for classifying epidemiological data on choropleth maps in series," Annals of the Association
  of American Geographers 92(4):662-681.
- **Stable link, DOI, or version:** not confirmed
- **Checked by and date:** abstract and record read by the 2026-10-09 search
- **Exact relevant location:** 56 subjects, seven classing methods tested; quantile and
  minimum-boundary-error classes read most accurately, natural breaks (Jenks) scored under 70%
  as accurate
- **What it supports:** a concrete, tested answer for question 6, how to choose the boundaries
  between discrete heat levels
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-029 Peters, Dieckmann, Vastfjall, Mertz, Slovic (2009)

- **Status:** LEAD
- **Full citation or dataset/software name:** Peters, E., Dieckmann, N., Vastfjall, D., Mertz,
  C.K., Slovic, P., "Bringing meaning to numbers: the impact of evaluative categories on
  decisions," Journal of Experimental Psychology: Applied.
- **Stable link, DOI, or version:** not confirmed
- **Checked by and date:** abstract and record read by the 2026-10-09 search
- **Exact relevant location:** adding visual boundary lines and labels to a numeric display
  changed real decisions across four experiments, most for less numerate people
- **What it supports:** a caution that the discrete heat-level boundaries will themselves
  change user behaviour, not just display information neutrally
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-030 Budescu, Broomell, Por (2009)

- **Status:** LEAD
- **Full citation or dataset/software name:** Budescu, D.V., Broomell, S., Por, H.-H.,
  "Improving communication of uncertainty in the reports of the Intergovernmental Panel on
  Climate Change," Psychological Science 20(3):299-308.
- **Stable link, DOI, or version:** doi.org/10.1111/j.1467-9280.2009.02284.x
- **Checked by and date:** abstract and record read by the 2026-10-09 search
- **Exact relevant location:** readers' numeric interpretations of IPCC probability categories
  deviated from the official ranges even with guidelines available
- **What it supports:** a warning against assuming labelled categories will be read the way
  they are defined
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-031 Budescu, Por, Broomell, Smithson (2014)

- **Status:** LEAD
- **Full citation or dataset/software name:** Budescu, D.V., Por, H.-H., Broomell, S.B.,
  Smithson, M., "The interpretation of IPCC probabilistic statements around the world," Nature
  Climate Change 4(6):508-512.
- **Stable link, DOI, or version:** not confirmed
- **Checked by and date:** abstract and record read by the 2026-10-09 search
- **Exact relevant location:** 25 samples across 24 countries and 17 languages, people read
  categories as closer to 50% than intended
- **What it supports:** the same miscalibration as SRC-030, confirmed across a much broader,
  cross-cultural sample
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-032 Gneiting (2011)

- **Status:** LEAD
- **Full citation or dataset/software name:** Gneiting, T., "Making and evaluating point
  forecasts," Journal of the American Statistical Association.
- **Stable link, DOI, or version:** doi.org/10.1198/jasa.2011.r10138 (arXiv:0912.0902, 2010)
- **Checked by and date:** full text read by the 2026-10-09 search, arXiv v2
- **Exact relevant location:** Theorem 3.3: a scoring function is consistent for the
  alpha-quantile if and only if it is generalized piecewise linear
- **What it supports:** the formal justification for quantile loss as the right tool for
  question 7, asymmetric preference between over- and under-prediction; under asymmetric-linear
  loss the optimal report is a quantile, not the mean
- **What it does not support or important limitations:** does not treat ordinal outcomes and
  does not derive the asymmetry parameter from a cost ratio; both extensions were worked out
  during this search, not quoted from the paper, and need independent checking
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-033 Zellner (1986)

- **Status:** LEAD
- **Full citation or dataset/software name:** Zellner, A., "Bayesian estimation and prediction
  using asymmetric loss functions," Journal of the American Statistical Association 81:446-451.
- **Stable link, DOI, or version:** not confirmed, not opened; details from citing papers
- **Checked by and date:** secondary by the 2026-10-09 search
- **Exact relevant location:** LINEX loss, linear for errors on one side, exponential on the
  other
- **What it supports:** an alternative to quantile loss if one direction of error should be
  penalized explosively rather than just more heavily
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-034 Sakai (2021)

- **Status:** LEAD
- **Full citation or dataset/software name:** Sakai, T., "Evaluating evaluation measures for
  ordinal classification and ordinal quantification," ACL-IJCNLP 2021, pp. 2759-2769.
- **Stable link, DOI, or version:** aclanthology.org/2021.acl-long.214.pdf
- **Checked by and date:** full text read by the 2026-10-09 search
- **Exact relevant location:** compares nine standard ordinal-classification measures,
  recommends linear weighted kappa
- **What it supports:** a direct warning: none of the nine standard measures treats
  over-prediction and under-prediction differently, so they will not reflect this project's
  stated preference and should be reported alongside the asymmetric loss, not instead of it
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-035 Kotsiantis, Pintelas (2004)

- **Status:** LEAD
- **Full citation or dataset/software name:** Kotsiantis, S.B., Pintelas, P.E., "A cost
  sensitive technique for ordinal classification problems," Springer LNCS chapter.
- **Stable link, DOI, or version:** doi.org/10.1007/978-3-540-24674-9_24
- **Checked by and date:** abstract only by the 2026-10-09 search; authors and series from
  memory, needs confirming
- **Exact relevant location:** a fixed, unequal misclassification-cost matrix for ordinal
  prediction
- **What it supports:** the general form to fall back on if the actual costs of over- versus
  under-estimating are not simply linear in category distance
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-036 Zambrano (2004)

- **Status:** LEAD
- **Full citation or dataset/software name:** Zambrano, E., "The interplay between analytics
  and computation in the study of congestion externalities: the case of the El Farol problem,"
  Journal of Public Economic Theory 6(2):375-395.
- **Stable link, DOI, or version:** doi.org/10.1111/j.1467-9779.2004.00170.x
- **Checked by and date:** full text read by the 2026-10-09 search, postprint
- **Exact relevant location:** formalises the El Farol bar problem as a congestion externality;
  no pure-strategy equilibrium exists, median attendance converges to the crowding threshold in
  every mixed equilibrium
- **What it supports:** the peer-reviewed source for the El Farol connection this project
  guessed at; covers the crowd-avoider half of the behaviour described in the problem statement,
  not the crowd-seeker half
- **What it does not support or important limitations:** only past attendance is public
  information in this model, never a published forecast, so it is not a perfect match for a
  system that publishes a prediction
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-037 Challet, Marsili, Ottino (2004)

- **Status:** LEAD
- **Full citation or dataset/software name:** Challet, D., Marsili, M., Ottino, G., "Shedding
  light on El Farol," Physica A.
- **Stable link, DOI, or version:** doi.org/10.1016/j.physa.2003.06.003 (arXiv:cond-mat/0306445)
- **Checked by and date:** full text read by the 2026-10-09 search, arXiv version
- **Exact relevant location:** with random information, El Farol is essentially equivalent to a
  minority game with biased strategies and a tunable resource level
- **What it supports:** connects El Farol to the broader minority-game literature; notes that
  attendance settling at the comfort level is trivial and holds even for random agents, the
  interesting quantity is fluctuation size
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-038 Simon (1954)

- **Status:** LEAD
- **Full citation or dataset/software name:** Simon, H.A., "Bandwagon and underdog effects and
  the possibility of election predictions," Public Opinion Quarterly 18(3):245-253.
- **Stable link, DOI, or version:** not confirmed
- **Checked by and date:** secondary, consistent across four citing sources, by the 2026-10-09
  search; content summary from the search's memory, not independently re-checked
- **Exact relevant location:** defines the two opposite reactions to a published forecast
- **What it supports:** the crowd-seeker half of question 8, the half El Farol does not cover
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-039 Leibenstein (1950)

- **Status:** LEAD
- **Full citation or dataset/software name:** Leibenstein, H., "Bandwagon, snob, and Veblen
  effects in the theory of consumers' demand," Quarterly Journal of Economics 64(2):183-207.
- **Stable link, DOI, or version:** not confirmed
- **Checked by and date:** secondary by the 2026-10-09 search
- **Exact relevant location:** demand that rises with others' consumption versus demand that
  falls with it, in one framework
- **What it supports:** the consumer-demand analogue of seekers versus avoiders, a second
  framing for the same split behaviour as SRC-038
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-040 Ben-Akiva, de Palma, Kaysi (1991)

- **Status:** LEAD
- **Full citation or dataset/software name:** Ben-Akiva, M., de Palma, A., Kaysi, I., "Dynamic
  network models and driver information systems," Transportation Research Part A
  25A(5):251-266.
- **Stable link, DOI, or version:** not confirmed
- **Checked by and date:** abstract and record read by the 2026-10-09 search
- **Exact relevant location:** real-time congestion information can backfire through
  overreaction, congestion shifts to the recommended route, and concentration, everyone
  converges on it
- **What it supports:** a direct precedent in a different domain (traffic) for the same
  mechanism this project's heat map could create
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-041 Perdomo, Zrnic, Mendler-Dunner, Hardt (2020)

- **Status:** LEAD
- **Full citation or dataset/software name:** Perdomo, J., Zrnic, T., Mendler-Dunner, C.,
  Hardt, M., "Performative prediction," ICML 2020, PMLR 119:7599-7609.
- **Stable link, DOI, or version:** proceedings.mlr.press/v119/perdomo20a.html (arXiv version
  available)
- **Checked by and date:** full text read by the 2026-10-09 search, arXiv version
- **Exact relevant location:** performative stability defined as optimal for the distribution a
  model itself induces; retraining converges to a stable point only if population sensitivity
  to the prediction is below a threshold set by the loss function's convexity and smoothness
- **What it supports:** the general framework for a prediction that changes the outcome it
  predicts, named as the closest match in this project's own earlier correction to the El Farol
  guess
- **What it does not support or important limitations:** reactions enter only as one aggregate
  distribution map; heterogeneous or opposite reactions, this project's seekers versus
  avoiders, are not analysed
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-042 Fotheringham (1983)

- **Status:** LEAD
- **Full citation or dataset/software name:** Fotheringham, A.S., "A new set of
  spatial-interaction models: the theory of competing destinations," Environment and Planning A
  15(1):15-36.
- **Stable link, DOI, or version:** not confirmed
- **Checked by and date:** abstract and record read by the 2026-10-09 search
- **Exact relevant location:** adds a competition term to the standard gravity model so a
  destination's draw depends on the alternatives around it
- **What it supports:** the core model for question 9, nearby venues as substitutes
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-043 Ewing (1986)

- **Status:** LEAD
- **Full citation or dataset/software name:** Ewing, G., "Spatial pattern in
  distance-deterrence parameters and Fotheringham's theory of competing destinations,"
  Environment and Planning A 18(4):547-551.
- **Stable link, DOI, or version:** doi.org/10.1068/a180547
- **Checked by and date:** abstract and record read by the 2026-10-09 search
- **Exact relevant location:** attributes SRC-042's spatial pattern to a modal-share artefact
  in its airline data specifically
- **What it supports:** a direct critique to weigh against SRC-042 before relying on it; cite
  together
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-044 Pellegrini, Fotheringham (1999)

- **Status:** LEAD
- **Full citation or dataset/software name:** Pellegrini, P.A., Fotheringham, A.S.,
  "Intermetropolitan migration and hierarchical destination choice: a disaggregate analysis
  from the US Public Use Microdata Samples," Environment and Planning A 31:1093-1118.
- **Stable link, DOI, or version:** not confirmed
- **Checked by and date:** abstract and record read by the 2026-10-09 search; volume and pages
  from a citing reference list
- **Exact relevant location:** applies competing-destinations choice models to individual
  migration data
- **What it supports:** confirms migration models and venue-substitution models share the same
  structure, the basis for the original "map and migration" search direction
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-045 Timmins, Murdock (2007)

- **Status:** LEAD
- **Full citation or dataset/software name:** Timmins, C., Murdock, J., "A revealed preference
  approach to the measurement of congestion in travel cost models," Journal of Environmental
  Economics and Management 53:230-249.
- **Stable link, DOI, or version:** not confirmed
- **Checked by and date:** full text read by the 2026-10-09 search, 2006 working-paper version;
  published-version numbers may differ slightly
- **Exact relevant location:** site choice among 569 Wisconsin fishing sites; congestion
  modeled as the expected share of visitors choosing a site, in a rational-expectations sorting
  equilibrium
- **What it supports:** the closest real-world empirical match found to venue-to-venue
  substitution under crowding; congestion is endogenous and must be instrumented (without
  instrumenting, the congestion coefficient comes out positive, people appear to like crowds,
  with it, negative); removing one site costs more per visit once re-sorting congestion is
  accounted for
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-046 Simini, Gonzalez, Maritan, Barabasi (2012)

- **Status:** LEAD
- **Full citation or dataset/software name:** Simini, F., Gonzalez, M.C., Maritan, A.,
  Barabasi, A.-L., "A universal model for mobility and migration patterns," Nature 484:96-100.
- **Stable link, DOI, or version:** doi.org/10.1038/nature10856 (arXiv version available)
- **Checked by and date:** full text read by the 2026-10-09 search, arXiv version
- **Exact relevant location:** the radiation model, a parameter-free intervening-opportunities
  flux formula, tested on commuting, migration, freight, and phone-traced trips
- **What it supports:** a parameter-free alternative to gravity-style models, if this project
  wants to avoid fitting a distance-decay parameter
- **What it does not support or important limitations:** has no crowding or capacity term and
  was not tested at venue scale, the two things this project most needs
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-047 Crandall, Backstrom, Cosley, Suri, Huttenlocher, Kleinberg (2010)

- **Status:** LEAD
- **Full citation or dataset/software name:** Crandall, D.J., Backstrom, L., Cosley, D., Suri,
  S., Huttenlocher, D., Kleinberg, J., "Inferring social ties from geographic coincidences,"
  PNAS 107(52):22436-22441.
- **Stable link, DOI, or version:** doi.org/10.1073/pnas.1006155107
- **Checked by and date:** full text read by the 2026-10-09 search
- **Exact relevant location:** co-occurrence defined as two users within the same spatial cell
  within a time window t; windows tested were 1, 7, 14, 28 days, and 1 year, cell sizes 0.001 to
  10 degrees
- **What it supports:** tie probability rises sharply as the window shrinks and the number of
  distinct co-occurrence cells grows; also contains a generative model where each pair of
  friends visits a place jointly with probability beta and independently otherwise, a usable
  template for a shared-detection model of known ties (question 2)
- **What it does not support or important limitations:** the shortest window actually tested is
  one day, coarser than a single outing; does not say whether one-way contacts were
  symmetrised; flags that large public events generate many co-occurrences between strangers,
  diluting the share that reflect a real tie
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-048 Cho, Myers, Leskovec (2011)

- **Status:** LEAD
- **Full citation or dataset/software name:** Cho, E., Myers, S.A., Leskovec, J., "Friendship
  and mobility: user movement in location-based social networks," KDD 2011, pp. 1082-1090.
- **Stable link, DOI, or version:** doi.org/10.1145/2020408.2020579
- **Checked by and date:** full text read by the 2026-10-09 search, author PDF
- **Exact relevant location:** states its tie-direction rule explicitly: Gowalla friendships
  are undirected; Brightkite friendships are directed and only reciprocated edges are kept,
  one-way links dropped; phone "friends" required five or more calls in each direction
- **What it supports:** a precedent for requiring mutual ties specifically, matching this
  project's own mutual-follow group definition; social ties explain about 10-30% of movement,
  periodic behaviour 50-70%
- **What it does not support or important limitations:** defines no explicit co-location time
  window; uses same-day check-ins with a power-law decay instead
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-049 Pham, Shahabi, Liu (2013)

- **Status:** LEAD
- **Full citation or dataset/software name:** Pham, H., Shahabi, C., Liu, Y., "EBM: an
  entropy-based model to infer social strength from spatiotemporal data," SIGMOD 2013,
  pp. 265-276.
- **Stable link, DOI, or version:** not confirmed
- **Checked by and date:** full text read by the 2026-10-09 search
- **Exact relevant location:** down-weights each co-occurrence by the venue's entropy, so
  co-occurrences at busy, many-visitor places count for less toward inferring a social tie
- **What it supports:** directly relevant to a real risk in this project's own design: busy
  venues are exactly where false "groups" (strangers who happen to check in near each other)
  are most likely
- **What it does not support or important limitations:** defines co-occurrence with a time
  window described only as "application-dependent"; never reports the value actually used
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-050 Eagle, Pentland, Lazer (2009)

- **Status:** LEAD
- **Full citation or dataset/software name:** Eagle, N., Pentland, A., Lazer, D., "Inferring
  friendship network structure by using mobile phone data," PNAS 106:15274-15278.
- **Stable link, DOI, or version:** doi.org/10.1073/pnas.0900282106
- **Checked by and date:** secondary, from another source's reference list, by the 2026-10-09
  search
- **Exact relevant location:** infers friendship from dense phone-based co-presence traces
- **What it supports:** the high-resolution counterpart to this project's sparse check-in data;
  a point of comparison for how much signal is lost going from dense to sparse observation
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-051 Arthur (1994)

- **Status:** REJECTED
- **Full citation or dataset/software name:** Arthur, W.B., "Inductive reasoning and bounded
  rationality," American Economic Review, Papers and Proceedings issue (1994). The original El
  Farol Bar problem paper.
- **Stable link, DOI, or version:** not recorded
- **Checked by and date:** rejected by the 2026-10-09 search, 2026-10-09
- **What it does not support or important limitations:** the AER Papers and Proceedings issue
  it appeared in is not peer-reviewed; SRC-036 (Zambrano 2004) and SRC-037 (Challet et al. 2004)
  carry the same El Farol claims from peer-reviewed venues instead. This closes the loop on the
  unverified guess logged earlier in this project: El Farol as a concept holds up, sourced
  through SRC-036 and SRC-037, but not through this paper.
- **Where it is used in the report or code:** not used, superseded by SRC-036 and SRC-037
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`
