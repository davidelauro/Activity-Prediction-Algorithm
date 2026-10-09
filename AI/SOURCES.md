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
