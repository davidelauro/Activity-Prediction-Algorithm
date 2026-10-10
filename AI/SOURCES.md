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
| SRC-052 | Machleit, Kellaris, Eroglu (1994) | paper | LEAD | human vs spatial crowding, the origin distinction |
| SRC-053 | Blut, Iyer (2020) | paper | LEAD | meta-analysis: human crowding reads positive |
| SRC-054 | Cheng, Liu, Bi (2021) | paper | LEAD | inverted-U between human crowding and experience |
| SRC-055 | Dunbar et al. (2017) | paper | LEAD | group size and real conversation, by venue type |
| SRC-056 | Hristova et al. (2016) | paper | LEAD | computable metrics for familiarity vs turnover |
| SRC-057 | Zahnow, Corcoran (2025) | paper | LEAD | repeat visitation and familiar strangers |
| SRC-058 | Bell, Pliner (2003) | paper | LEAD | dwell time correlates with group size |
| SRC-059 | Gabriel et al. (2020) | paper | LEAD | headcount a weak predictor of felt connection |
| SRC-060 | Eurostat city statistics | dataset | LEAD | population and student counts per city |
| SRC-061 | OpenStreetMap via Overpass | dataset | LEAD | nightlife venue counts per city |
| SRC-062 | Gilmore et al. (2021) | paper | CHECKED | drinking session duration, 4.8 hours mean |
| SRC-063 | Gilmore et al. (2022) | paper | LEAD | companion paper on the same Perth survey |
| SRC-064 | Sykes, Rowley, Schaefer (1993) | paper | LEAD | duration of group stay, isolates vs groups |
| SRC-065 | Eurostat time use survey | dataset | LEAD | going-out participation by day of week |
| SRC-066 | Wasserman, minimax notes | notes | CHECKED | minimax risk reduced to M-ary testing |
| SRC-067 | Yu (1997) | chapter | LEAD | canonical Le Cam and Assouad lemmas |
| SRC-068 | Scarlett, Cevher (2019) | paper | CHECKED | Fano's inequality, approximate-recovery form |
| SRC-069 | Acharya, Sun, Zhang (2021) | paper | CHECKED | Assouad's lemma, stated form |
| SRC-070 | Chen, Guntuboyina, Zhang (2016) | paper | LEAD | Bayes risk bounds, arbitrary loss, needs a prior |
| SRC-071 | Lehmann, Casella (1998) | book | LEAD | textbook Bayes risk and minimaxity |
| SRC-072 | Pedregosa, Bach, Gramfort (2017) | paper | CHECKED | ordinal risk over all decision functions |
| SRC-073 | Tian, Kong, Valiant (2017) | paper | CHECKED | minimax estimation under binomial thinning |
| SRC-074 | Tsybakov (2009) | book | LEAD | minimax lower bounds, no pinpoint verified |
| SRC-075 | Wainwright (2019) | book | LEAD | minimax lower bounds, chapter 15, unread |
| SRC-076 | Noë et al. (2016) | paper | LEAD | personality homophily in check-ins, paywalled |
| SRC-077 | Brown et al. (2013) | paper | CHECKED | calibrated social graph generator parameters |
| SRC-078 | Zarezade, Jafarzadeh, Rabiee (2018) | paper | CHECKED | friend-influence cascade form, no magnitudes |
| SRC-079 | Yuan et al. (2019) | paper | CHECKED | multivariate Hawkes form, no fitted magnitudes |
| SRC-080 | Bakshy et al. (2012) | paper | CHECKED | the only calibrated per-tie contagion probability |
| SRC-081 | Zhang et al. (2013) | paper | CHECKED | per-visit check-in probability 0.114, aggregate only |
| SRC-082 | Wang et al. (2016) | paper | CHECKED | missing check-ins concentrate at specific venues |
| SRC-083 | Muchnik et al. (2013) | paper | LEAD | heavy-tailed volume, off-target for a probability |
| SRC-084 | Kim et al. (2020) | paper | CHECKED | closest prior simulator, defines no posting probability |
| SRC-085 | Amiri et al. (2024) | paper | CHECKED | successor simulator, same gap |
| SRC-086 | Xu et al. (2018) | paper | CHECKED | check-in accuracy falls with venue rank and diversity |
| SRC-087 | Rost et al. (2013) | paper | CHECKED | a promotion moved one chain from 5 to 1323 check-ins |
| SRC-088 | Chen et al. (2020) | paper | CHECKED | revisitation and re-check-in diverge with popularity |
| SRC-089 | Bellogín et al. (2025) | paper | REJECTED | unsupported nightlife claim, logged as a caution |
| SRC-090 | Li et al. (2013) | paper | LEAD | venue popularity in Foursquare, unread |
| SRC-091 | Tasse et al. (2017) | paper | CHECKED | top geotag motive is a venue attribute |
| SRC-092 | Cramer, Rost, Holmquist (2011) | paper | CHECKED | selectivity between commercial venues |
| SRC-093 | Frith (2014) | paper | CHECKED | selectivity strength varies by user type |
| SRC-094 | Patil et al. (2012) | paper | CHECKED | coupons drive 19.89 percent of location shares |
| SRC-095 | Lindqvist et al. (2011) | paper | LEAD | talk deck read, paper not opened |
| SRC-096 | Guha, Birnholtz (2013) | paper | LEAD | impression management, paywalled |
| SRC-097 | Instagram geotag survey (2022) | paper | LEAD | unverified, citation incomplete |
| SRC-098 | Song, Koren, Wang, Barabási (2010) | paper | CHECKED | Zipf visit frequency, zeta 1.2, within-person |
| SRC-099 | Alessandretti et al. (2018) | paper | CHECKED | about 25 familiar locations, conserved |
| SRC-100 | Schläpfer et al. (2021) | paper | CHECKED | inverse-square visitation, location-level not personal |
| SRC-101 | Pappalardo et al. (2015) | paper | CHECKED | returners and explorers, mobility shape is bimodal |
| SRC-102 | González, Hidalgo, Barabási (2008) | paper | LEAD | predecessor to SRC-098, unread |
| SRC-103 | Hu, Koren, Volinsky (2008) | paper | CHECKED | implicit feedback, downweights the unseen |
| SRC-104 | Liang, Charlin, McInerney, Blei (2016) | paper | CHECKED | explicit exposure model, closest to the censoring |
| SRC-105 | Elkan, Noto (2008) | paper | CHECKED | positive-unlabeled, SCAR assumes the open question away |
| SRC-106 | MacKenzie et al. (2002) | paper | LEAD | origin of occupancy models, blocked by publisher |
| SRC-107 | unmarked::occu documentation | software | CHECKED | separate covariates on detection and occupancy |
| SRC-108 | Bates et al. (2015) | paper | LEAD | lme4, abstract only |
| SRC-109 | Baayen, Davidson, Bates (2008) | paper | LEAD | crossed subjects and items design |
| SRC-110 | Gelman, Hill (2007) | book | LEAD | non-nested models, pinpoint unverified |
| SRC-111 | Classical compound and choice citations | group | LEAD | six remaining foundational citations, none opened |
| SRC-112 | Beta-binomial, as individual heterogeneity in thinning | concept | LEAD | mathematical form confirmed via secondary sources; Skellam/Williams themselves unopened |

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

- **Status:** CHECKED
- **Full citation or dataset/software name:** Brown, C., Lathia, N., Mascolo, C., Noulas, A.,
  Blondel, V., "Group Colocation Behavior in Technological Social Networks," PLOS ONE
  9(8):e105816, 2014.
- **Stable link, DOI, or version:** doi.org/10.1371/journal.pone.0105816, preprint
  arXiv:1408.1519
- **Checked by and date:** full text read by Claude Code on 2026-10-10, in both HTML versions.
  Promoted from LEAD on that date. The owner has not read it.
- **Exact relevant location:** Methods for the definitions and data, Results Figures 1 to 4 for
  Foursquare, Figures 6 to 8 for the call records. Figure 2 for the colocation ratio by category,
  Figure 3 for previously visited venues, Figure 4 for venues a friend visited earlier.
- **What it supports:** the one-hour colocation window, which is this paper's own definition. Two
  friends count as colocated when they check in to the same venue within one hour. Social
  check-ins land on a previously visited venue with probability about 0.25, against about 0.38
  for check-ins in general. 43 percent of social check-ins are at venues a friend visited
  earlier, against 18 percent of all check-ins. The colocation ratio exceeds 1.5 for Arts and
  Entertainment and for Nightlife, and falls below 0.7 for Residence, Shop and Transport. Data:
  2,315,350 check-ins, 109,314 venues, 104,266 users, New York, November 2010 to September 2011.
- **What it does not support or important limitations:** no fitted model, no correlation
  coefficient, and no conditional probability that a colocated friend also posts. The paper never
  reports what fraction of all check-ins are social, and Figure 7 shows pairs through quintets
  without group frequencies. It therefore supports Assumption 3's qualitative direction and
  supplies no generative mechanism. The colocation ratio by category is an across-category
  result, so it does not speak to variation among bars.
- **Where it is used in the report or code:** not yet used. Origin of the one-hour window figure
  that earlier sessions attributed to this source.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`. A local copy sits
  at `paper/literature/brown-et-al-2014.pdf`, which is gitignored.

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
in prose and grouped by question, was deleted on 2026-10-10 under DEC-008 and survives only in
git history, at commit `23a4629`, as `drafts/literature-review-results.md`; the entries
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

---

SRC-052 through SRC-059 surfaced from a search on what makes a place feel socially alive,
run 2026-10-09 via a fresh subagent, independent of this project's main session. Full prose
detail for every source the search returned was deleted on 2026-10-10 under DEC-008 and
survives only in git history, at commit `23a4629`. The
owner asked for a second pass: keep only the ones measurable from this project's actual data,
check-ins (user, timestamp, venue) and a mutual-follow social graph, nothing else. No audio,
survey, physical-venue, or capacity data exists in this project's scope. The eight below passed
that filter; roughly thirty did not and are listed afterward, not individually logged.

### SRC-052 Machleit, Kellaris, Eroglu (1994)

- **Status:** LEAD
- **Full citation or dataset/software name:** Machleit, K.A., Kellaris, J.J., Eroglu, S.A.,
  "Human versus spatial dimensions of crowding perceptions in retail environments," Marketing
  Letters 5(2):183-194.
- **Stable link, DOI, or version:** doi.org/10.1007/BF00994108
- **Checked by and date:** record read by the 2026-10-09 search
- **Exact relevant location:** originates the distinction between human crowding (perceived
  presence of other people) and spatial crowding (perceived constraint of physical space)
- **What it supports:** headcount, which this project can measure directly, maps to human
  crowding, the half of the construct with positive effects in the later literature; spatial
  crowding, which this project cannot measure without capacity data, is the half with negative
  effects
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-053 Blut, Iyer (2020)

- **Status:** LEAD
- **Full citation or dataset/software name:** Blut, M., Iyer, G.R., "Consequences of perceived
  crowding: A meta-analytical perspective," Journal of Retailing 96(3):362-382.
- **Stable link, DOI, or version:** doi.org/10.1016/j.jretai.2019.11.007
- **Checked by and date:** record read by the 2026-10-09 search
- **Exact relevant location:** meta-analysis of 73 samples, over 19,000 shoppers
- **What it supports:** human crowding has positive effects on evaluation and does not reduce
  perceived control, unlike spatial crowding; the strongest quantitative backing found for
  treating headcount itself as a positive signal, not just a neutral one
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-054 Cheng, Liu, Bi (2021)

- **Status:** LEAD
- **Full citation or dataset/software name:** Cheng, H., Liu, Q., Bi, J.-W., "Perceived
  crowding and festival experience: The moderating effect of visitor-to-visitor interaction,"
  Tourism Management Perspectives 40:100888.
- **Stable link, DOI, or version:** doi.org/10.1016/j.tmp.2021.100888
- **Checked by and date:** seen via search results by the 2026-10-09 search; fetch of the full
  text blocked, author list and article number not independently confirmed
- **Exact relevant location:** 555 questionnaires at Chinese cultural festivals
- **What it supports:** an inverted-U relationship between perceived human crowding and festival
  experience, the only direct test of a non-linear headcount effect found in this search; a
  candidate functional form for a headcount feature, not a straight line
- **What it does not support or important limitations:** a single self-report study; no
  meta-analysis has tested a quadratic term on human crowding
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-055 Dunbar et al. (2017)

- **Status:** LEAD
- **Full citation or dataset/software name:** Dunbar, R.I.M., Launay, J., Wlodarski, R.,
  Robertson, C., Pearce, E., Carney, J., MacCarron, P., "Functional benefits of (modest)
  alcohol consumption," Adaptive Human Behavior and Physiology 3(2):118-133.
- **Stable link, DOI, or version:** doi.org/10.1007/s40750-016-0058-4 (open access)
- **Checked by and date:** full text read by the 2026-10-09 search
- **Exact relevant location:** observational study contrasting small community pubs against
  large city-centre bars
- **What it supports:** both group size and venue type are directly measurable from this
  project's check-in data. Found mean group size 3.94 at a regular's local venue versus 6.73 at
  casual city-centre bars, and significantly more people physically present in a conversation
  without participating, more time not talking, and shorter conversations in the
  higher-turnover venues. Bigger, higher-turnover groups are not the same thing as more actual
  social engagement.
- **What it does not support or important limitations:** the conversation-quality measures
  themselves are not something this project can observe; only group size and venue-level
  turnover are
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-056 Hristova et al. (2016)

- **Status:** LEAD
- **Full citation or dataset/software name:** Hristova, D., Williams, M.J., Musolesi, M.,
  Panzarasa, P., Mascolo, C., "Measuring urban social diversity using interconnected geo-social
  networks," WWW '16.
- **Stable link, DOI, or version:** doi.org/10.1145/2872427.2883065
- **Checked by and date:** seen via search results by the 2026-10-09 search, abstract and record
  level
- **Exact relevant location:** defines four computable place-level metrics: social brokerage,
  entropy, visitor homogeneity, and serendipity
- **What it supports:** the single most directly actionable source for a familiarity-versus-
  turnover feature; every one of these four metrics is computable from exactly the data this
  project has, check-in history per user per venue plus the social graph, with no additional
  data collection needed
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-057 Zahnow, Corcoran (2025)

- **Status:** LEAD
- **Full citation or dataset/software name:** Zahnow, R., Corcoran, J., "From communal places to
  comfort zones: Familiar stranger encounters in everyday life as a form of belonging," Urban
  Studies 62(4):754-771.
- **Stable link, DOI, or version:** doi.org/10.1177/00420980241265033
- **Checked by and date:** seen via search results by the 2026-10-09 search; fetch blocked,
  citation verified through two independent records
- **Exact relevant location:** 2022 intercept survey, 278 Brisbane residents
- **What it supports:** tests number of familiar strangers and frequency of visitation as
  predictors of belonging; frequency of visitation is directly computable from this project's
  check-in history, a repeat-visitor rate per venue
- **What it does not support or important limitations:** the belonging outcome itself was
  measured by survey, not something this project can observe; only the familiar-stranger and
  visitation-frequency inputs translate
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-058 Bell, Pliner (2003)

- **Status:** LEAD
- **Full citation or dataset/software name:** Bell, R., Pliner, P.L., "Time to eat: The
  relationship between the number of people eating and meal duration in three lunch settings,"
  Appetite 41(2):215-218.
- **Stable link, DOI, or version:** doi.org/10.1016/S0195-6663(03)00109-0
- **Checked by and date:** seen via search results by the 2026-10-09 search, not independently
  verified
- **Exact relevant location:** observational study across a worksite cafeteria, a fast-food
  restaurant, and a mid-priced restaurant
- **What it supports:** a significant positive correlation between group size and meal duration;
  since this project can proxy dwell time from first-seen to last-seen check-in timestamps, and
  group size directly, this gives a testable relationship between two measurable quantities
- **What it does not support or important limitations:** dwell time is an effect of group size
  here, not an independent driver; any model using both needs to be explicit about which role
  each plays
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-059 Gabriel et al. (2020)

- **Status:** LEAD
- **Full citation or dataset/software name:** Gabriel, S., Naidu, E., Paravati, E., Morrison,
  C.D., Gainey, K., "Creating the sacred from the profane: Collective effervescence and everyday
  activities," The Journal of Positive Psychology 15(1):129-154.
- **Stable link, DOI, or version:** doi.org/10.1080/17439760.2019.1689412
- **Checked by and date:** full text read in part by the 2026-10-09 search (scale development,
  measures, and the Study 2d regression table specifically)
- **Exact relevant location:** nine studies, eleven datasets, over 2,500 participants; Study 2d
  hierarchical regression
- **What it supports:** number of people present had only a small, significant relation to the
  Connection subscale (beta = 0.16) and no significant relation to Sacredness; number of friends
  present was non-significant for both. A caution against this project leaning on raw headcount
  as the primary driver of a "socially alive" score, even though headcount is the easiest thing
  to measure.
- **What it does not support or important limitations:** a single regression inside a
  scale-validation paper, not a dedicated test of this project's question; the Connection and
  Sacredness subscales themselves are not something this project can measure
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-literature-search-topics.md`

### SRC-060 Eurostat city statistics

- **Status:** LEAD
- **Full citation or dataset/software name:** Eurostat, "City statistics" collection, datasets
  `urb_cpop1` (Population, cities and greater cities) and `urb_ceduc` (Education, cities and
  greater cities).
- **Stable link, DOI, or version:** `ec.europa.eu/eurostat/databrowser/product/view/urb_cpop1`
  and `ec.europa.eu/eurostat/databrowser/product/view/urb_ceduc`. The `urb_ceduc` response
  reported itself as updated 2026-10-02.
- **Checked by and date:** retrieved and read by Claude Code on 2026-10-09, through the
  Eurostat dissemination API. The owner has not re-run the query, so the numbers below are not
  independently confirmed.
- **Exact relevant location:** indicator `DE1001V` for total population, `DE1049V` and
  `DE1101V` for the 20-24 and 25-29 age bands, `TE1026V` for students in higher education at
  ISCED levels 5 to 8, and `TE1026I` for students per 1,000 residents.
- **What it supports:** the scale calibration recorded in DEC-006. Across eleven European
  university cities, median population is 131,591 and median resident population aged 20 to 29
  is 27,731. Across the seven of those cities with current, core-city student figures, median
  student enrolment is 33,262 and the mean is 33,894.
- **What it does not support or important limitations:** `TE1026V` counts students enrolled at
  institutions located in the city, not students resident there. Leuven returns 58,601 students
  against a total population of 104,239 and a resident 20-24 population of 8,636, so the
  indicator cannot be read as a resident share. Uppsala's student figure dates from 2011 and
  Olomouc's from 2017. Coimbra appears only as a greater city, so it is not comparable to the
  core-city rows. Eurostat publishes a reuse policy allowing reuse with attribution, and no one
  has yet checked the exact licence text for this collection.
- **Where it is used in the report or code:** not yet used. DEC-006 cites it for scale.
- **Related prompt log:** `AI/PROMPTS/2026-10-09-map-design-decisions.md`

#### Query used

    https://ec.europa.eu/eurostat/api/dissemination/statistics/1.0/data/urb_ceduc
      ?format=JSON&lang=en
      &cities=BE008C&cities=NL018C&cities=SE006C&cities=SE013C&cities=DE020C
      &cities=DE047C&cities=DE100C&cities=CZ006C&cities=NL031C&cities=NL033C&cities=PT005C

The same city list, against `urb_cpop1`, returned the population figures. City codes map as
follows: BE008C Leuven, CZ006C Olomouc, DE020C Goettingen, DE047C Tuebingen, DE100C Heidelberg,
NL018C Groningen, NL031C Maastricht, NL033C Nijmegen, PT005C Coimbra greater city, SE006C
Uppsala, SE013C Lund.

### SRC-061 OpenStreetMap via Overpass

- **Status:** LEAD
- **Full citation or dataset/software name:** OpenStreetMap contributors, queried through the
  public Overpass API at `overpass-api.de`.
- **Stable link, DOI, or version:** `openstreetmap.org`. OpenStreetMap carries no version
  number, so the access date is the only identifier. Repeating the query later will return a
  different count.
- **Checked by and date:** retrieved by Claude Code on 2026-10-09. The owner has not re-run the
  query.
- **Exact relevant location:** count of elements tagged `amenity=bar`, `amenity=pub`, or
  `amenity=nightclub` inside each city's administrative boundary.
- **What it supports:** the venue-count calibration in DEC-006. Leuven returned 121, Groningen
  122, and Heidelberg 75.
- **What it does not support or important limitations:** three cities form a thin sample, and
  the public endpoint began refusing further requests, which is why the sample stopped at three.
  OpenStreetMap coverage depends on volunteer mapping and varies by city. Heidelberg resolved
  only at boundary level 6 while Leuven and Groningen resolved at level 8, so the three areas
  are not strictly comparable. Only the counts were retrieved. No venue name and no coordinate
  was requested, stored, or written anywhere, which keeps the simulator synthetic as `AGENTS.md`
  requires. OpenStreetMap data carries the Open Database Licence 1.0, and no one has yet checked
  whether reusing an aggregate count of this kind triggers any obligation under it.
- **Where it is used in the report or code:** not yet used. DEC-006 cites it for venue count.
- **Related prompt log:** `AI/PROMPTS/2026-10-09-map-design-decisions.md`

#### Query used

    [out:json][timeout:120];
    area["name"="<city>"]["boundary"="administrative"]["admin_level"="<level>"]->.a;
    ( nwr["amenity"="bar"](area.a);
      nwr["amenity"="pub"](area.a);
      nwr["amenity"="nightclub"](area.a); );
    out count;

Levels used: Leuven 8, Groningen 8, Heidelberg 6.

### SRC-062 Gilmore et al. (2021)

- **Status:** CHECKED
- **Full citation or dataset/software name:** Gilmore, W., Symons, M., Liang, W., Graham, K.,
  Kypri, K., Miller, P., Chikritzhs, T., "Association between Nightlife Goers' Likelihood of an
  Alcohol Use Disorder and Their Preferred Bar's Closing Time: A Cross-Sectional Observational
  Study in Perth, Australia," International Journal of Environmental Research and Public Health
  18:13040, 2021.
- **Stable link, DOI, or version:** doi.org/10.3390/ijerph182413040, CC BY. **A correction
  exists and must be cited alongside it:** same authors, 2022, same journal, 19:9684,
  doi.org/10.3390/ijerph19159684.
- **Checked by and date:** results table read directly by Claude Code on 2026-10-09, through the
  Europe PMC full-text API. The owner has not read the paper.
- **Exact relevant location:** the drinking-session duration rows of the comparison table
- **What it supports:** drinking session duration had a mean of 4.8 hours with standard
  deviation 2.7 for one subgroup of 246 respondents, and 5.0 hours with standard deviation 2.5
  for another of 198. Two further subgroups gave 4.5 and 4.4 hours. Street-intercept surveys of
  nightlife-goers in four Perth nightlife areas, 2015 to 2016.
- **What it does not support or important limitations:** the figure measures a whole drinking
  session, not time spent at one venue, so it bounds the project's two-hour window from above
  rather than setting it. Perth rather than a European university city. Nightlife-goers
  intercepted on the street, which is not a random sample of a community.
- **Where it is used in the report or code:** not yet used. Anchors the two-hour window in
  `drafts/problem-statement-v2.md`.
- **Related prompt log:** `AI/PROMPTS/2026-10-09-problem-statement.md`

### SRC-063 Gilmore et al. (2022)

- **Status:** LEAD
- **Full citation or dataset/software name:** Gilmore, W., Symons, M., Liang, W., Graham, K.,
  Kypri, K., Miller, P., Chikritzhs, T., "Association between Bar Closing Time, Alcohol Use
  Disorders and Blood Alcohol Concentration: A Cross-Sectional Observational Study of
  Nightlife-Goers in Perth, Australia," International Journal of Environmental Research and
  Public Health 19:7026, 2022.
- **Stable link, DOI, or version:** doi.org/10.3390/ijerph19127026, CC BY
- **Checked by and date:** metadata verified against the Europe PMC API on 2026-10-09. Full text
  not read.
- **Exact relevant location:** reports on the same Perth survey as SRC-062
- **What it supports:** a second reporting of the same fieldwork, worth checking for a
  venue-level rather than session-level duration figure
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-problem-statement.md`

### SRC-064 Sykes, Rowley, Schaefer (1993)

- **Status:** LEAD
- **Full citation or dataset/software name:** Sykes, R.E., Rowley, R.D., Schaefer, J.M., "The
  influence of time, gender and group size on heavy drinking in public bars," Journal of Studies
  on Alcohol 54(2):133-138, 1993.
- **Stable link, DOI, or version:** doi.org/10.15288/jsa.1993.54.133
- **Checked by and date:** metadata and abstract verified against the PubMed API on 2026-10-09,
  PMID 8459706. Full text not read.
- **Exact relevant location:** per the abstract, average duration of group stay in a bar is one
  of the measured variables
- **What it supports:** two things this project needs. It measures duration of stay at a single
  venue, which is what the two-hour window actually requires and which SRC-062 does not give.
  It also separates isolates from groups across 1,996 observed drinking units in a 12 percent
  random sample of 565 bars, which bears on the owner's claim that people rarely drink alone.
- **What it does not support or important limitations:** the abstract reports that group size
  did not affect the proportion of a group drinking heavily, so the paper is not evidence for
  group size driving behaviour generally. 1993, United States metropolitan area. The duration
  figure is not in the abstract and the full text is not in hand.
- **Where it is used in the report or code:** not yet used
- **Related prompt log:** `AI/PROMPTS/2026-10-09-problem-statement.md`

### SRC-065 Eurostat time use survey

- **Status:** LEAD
- **Full citation or dataset/software name:** Eurostat, Harmonised European Time Use Survey,
  datasets `tus_20week` (time spent in the main activity by sex and day of the week, 2020 wave)
  and `tus_00age` (time spent, participation time and participation rate by sex and age group,
  2000 and 2010 waves).
- **Stable link, DOI, or version:**
  `ec.europa.eu/eurostat/databrowser/product/view/tus_20week` and
  `ec.europa.eu/eurostat/databrowser/product/view/tus_00age`
- **Checked by and date:** queried and read by Claude Code on 2026-10-09 through the Eurostat
  dissemination API, unit `PTP_RT`. The owner has not re-run the queries.
- **Exact relevant location:** activity codes `AC52` and `AC512_513_519` in the 2020 wave, and
  `AC52` and `AC51B` with age `Y20-24` against `TOTAL` in the 2010 wave
- **What it supports:** the day-of-week shape of going out. Across eleven countries, the median
  participation rate in entertainment and culture ran 2.91 percent Monday to Thursday, 4.08
  percent on Friday, 6.63 percent on Saturday and 4.27 percent on Sunday. Socialising with
  others ran 23.60, 27.74, 37.18 and 35.40 percent over the same days. In the 2010 wave the
  median ratio of the 20 to 24 age group to the total population was 1.67 for entertainment and
  culture and 1.10 for other social life, across eighteen countries.
- **What it does not support or important limitations:** three serious limits. The 2020 wave's
  fieldwork years differ by country and overlap COVID restrictions, and nobody has checked which
  years each country collected, so a going-out rate measured under restrictions would be biased
  down. Neither activity code means "went to a bar", since entertainment and culture covers
  cinema and museums while socialising includes visits at home. The day breakdown bundles Monday
  to Thursday, so Thursday cannot be separated. Combining the 2020 day shape with the 2010 age
  ratio is a construction across two waves and not a single measured quantity.
- **Where it is used in the report or code:** not yet used. Produced the turnout figures of 4.9,
  6.8 and 11.1 percent used in the 2026-10-09 scale calculations.
- **Related prompt log:** `AI/PROMPTS/2026-10-09-problem-statement.md`

### SRC-066 Wasserman, minimax theory notes

- **Status:** CHECKED
- **Full citation or dataset/software name:** Wasserman, L., "Minimax Theory," lecture notes for
  Statistical Machine Learning, Carnegie Mellon University.
- **Stable link, DOI, or version:** `stat.cmu.edu/~larry/=sml/minimax.pdf`
- **Checked by and date:** read by Claude Code on 2026-10-10. The owner has not read it.
- **Exact relevant location:** Theorem 3, which reduces the minimax risk `inf_est sup_P E[d]` to
  `inf_test max_j P_j(psi != j)` over a finite subfamily. Theorem 4 and Corollary 5 for Le Cam's
  two-point method, Lemma 9 for its mixture version, Lemma 6 for the Neyman-Pearson test
  minimizing the sum of the two error probabilities.
- **What it supports:** the reduction from a statement about every procedure to a statement about
  testing finitely many hypotheses. Corollary 5 states that if `KL(P_0,P_1) <= log2/n` then the
  risk is at least `s/16`, where `s` is the separation between the two hypotheses.
- **What it does not support or important limitations:** the Theorem 3 reduction needs the loss
  written through a metric or semi-distance, so the triangle inequality holds. A three-level
  label is not a metric estimand until a loss is stated. The `n * KL` step in Corollary 5 assumes
  an i.i.d. product measure, which within-venue friend dependence violates unless the venue
  rather than the person becomes the independent unit. The notes give lower bounds only, never an
  achievable procedure. Lecture notes rather than a peer-reviewed source.
- **Where it is used in the report or code:** not yet used. One candidate for the framework the
  research question needs, listed without preference.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-067 Yu (1997)

- **Status:** LEAD
- **Full citation or dataset/software name:** Yu, B., "Assouad, Fano, and Le Cam," in
  *Festschrift for Lucien Le Cam*, Springer, 1997, pp. 423-435.
- **Stable link, DOI, or version:** doi.org/10.1007/978-1-4612-1880-7_29
- **Checked by and date:** not read. Claude Code verified on 2026-10-10 that Acharya, Sun and
  Zhang (`SRC-069`) attribute Le Cam's lemma to this chapter's Lemma 1 and Assouad's lemma to its
  Lemma 2. The pinpoint comes from the citing paper, not from this chapter itself.
- **Exact relevant location:** reported as Lemma 1 for Le Cam and Lemma 2 for Assouad.
  Unverified against the chapter.
- **What it supports:** the canonical citation for both lemmas, should the owner need one.
- **What it does not support or important limitations:** nobody on this project has opened it. The
  lemma numbers rest on a second-hand attribution and must be checked before the chapter is cited
  in the paper.
- **Where it is used in the report or code:** not yet used.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-068 Scarlett and Cevher (2019)

- **Status:** CHECKED
- **Full citation or dataset/software name:** Scarlett, J., Cevher, V., "An Introductory Guide to
  Fano's Inequality with Applications in Statistical Estimation," arXiv:1901.00555v3.
- **Stable link, DOI, or version:** arxiv.org/abs/1901.00555
- **Checked by and date:** read by Claude Code on 2026-10-10. The owner has not read it.
- **Exact relevant location:** Theorem 1 for the standard form, Theorem 2 for approximate
  recovery with the `N_max(t)` quantity, Theorem 3 for the conditional form, Lemma 1 for data
  processing, Lemma 2 for tensorization. Section 7.1 for non-asymptotic weakness, Section 7.2 for
  non-uniform priors.
- **What it supports:** a lower bound on the error of every procedure, through
  `P_e >= 1 - (I + log2)/log|V|`. The approximate-recovery form in Theorem 2 fits a coarse label
  better than exact recovery does, since placing a venue on the right level out of three is not an
  exact-identification problem.
- **What it does not support or important limitations:** the clean form requires a uniform prior
  on the hard subset, and Section 7.2 states that non-uniform priors need alternative forms. The
  tensorization in Lemma 2 requires observations conditionally independent given the index, which
  within-venue friend dependence breaks. Section 7.1 records the bound's non-asymptotic weakness
  and its restriction to KL divergence. It gives no strong converse.
- **Where it is used in the report or code:** not yet used. A second candidate framework, listed
  without preference.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-069 Acharya, Sun, Zhang (2021)

- **Status:** CHECKED
- **Full citation or dataset/software name:** Acharya, J., Sun, Z., Zhang, H., "Differentially
  Private Assouad, Fano, and Le Cam," Proceedings of Machine Learning Research 132, 2021.
- **Stable link, DOI, or version:** `proceedings.mlr.press/v132/acharya21a`
- **Checked by and date:** Section 2.3 read by Claude Code on 2026-10-10. The owner has not read
  it.
- **Exact relevant location:** Section 2.3, equation (6), and the first bound of Theorem 3, which
  the paper states as classic Assouad.
- **What it supports:** a stated form of Assouad's lemma. The parameter family is indexed by a
  hypercube `{+1,-1}^k`, and the loss must satisfy
  `l(theta(p_u), theta(p_v)) >= 2 * tau * Hamming(u,v)`.
- **What it does not support or important limitations:** Assouad requires the loss to decompose
  coordinatewise, and gives nothing when the loss couples coordinates. Whether a per-venue
  accuracy summed across venues satisfies the Hamming condition is unresolved, because this
  project's tercile boundaries are read off the realized headcount distribution and so couple the
  venues to each other. The paper's own subject is differential privacy, which this project does
  not need.
- **Where it is used in the report or code:** not yet used. A third candidate framework.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-070 Chen, Guntuboyina, Zhang (2016)

- **Status:** LEAD
- **Full citation or dataset/software name:** Chen, X., Guntuboyina, A., Zhang, Y., "On Bayes
  Risk Lower Bounds," Journal of Machine Learning Research 17(218):1-58, 2016.
- **Stable link, DOI, or version:** `jmlr.org/papers/v17/16-185.html`
- **Checked by and date:** abstract read by Claude Code on 2026-10-10. The proofs were not read.
- **Exact relevant location:** not established. The abstract describes lower bounds on Bayes risk
  through f-informativity.
- **What it supports:** a route that permits an arbitrary loss function and states no
  independence condition, which the Fano and Le Cam routes both need.
- **What it does not support or important limitations:** it requires an explicit prior, so it
  gives no prior-free statement. The project's simulator supplies a prior by construction, which
  means a claim proved this way would describe the simulator's generating law rather than hold
  uniformly over headcount configurations. That distinction decides between the minimax branch
  and the Bayes branch, and the owner has not settled it.
- **Where it is used in the report or code:** not yet used. A fourth candidate framework.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-071 Lehmann and Casella (1998)

- **Status:** LEAD
- **Full citation or dataset/software name:** Lehmann, E.L., Casella, G., *Theory of Point
  Estimation*, 2nd edition, Springer Texts in Statistics, 1998. ISBN 0387985026.
- **Stable link, DOI, or version:** ISBN 0387985026
- **Checked by and date:** chapter titles and pagination verified through Crossref by Claude Code
  on 2026-10-10. No chapter text was read.
- **Exact relevant location:** Chapter 4, "Average Risk Optimality," pp. 225-307, and Chapter 5,
  "Minimaxity and Admissibility," pp. 309-427.
- **What it supports:** the textbook treatment of Bayes risk and of minimaxity, which is where the
  Bayes-optimal rule for a stated loss and prior would come from.
- **What it does not support or important limitations:** the contents are unverified. Deriving the
  optimal rule by this route needs the full joint law of latent headcount and observation,
  including the thinning probability, and a loss fixed in advance. It returns the exact optimum
  rather than a bound, so it constrains the maximum from both sides, which is more than the
  lower-bound routes give and also more work.
- **Where it is used in the report or code:** not yet used. A fifth candidate framework.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-072 Pedregosa, Bach, Gramfort (2017)

- **Status:** CHECKED
- **Full citation or dataset/software name:** Pedregosa, F., Bach, F., Gramfort, A., "On the
  Consistency of Ordinal Regression Methods," Journal of Machine Learning Research 18:1-35, 2017.
- **Stable link, DOI, or version:** `jmlr.org/papers/volume18/15-495`
- **Checked by and date:** read by Claude Code on 2026-10-10. The owner has not read it.
- **Exact relevant location:** equation (3) for the absolute-error ordinal loss, equation (5) for
  the conditional risk, equation (6) for its pointwise minimization, Definition 1 for Fisher
  consistency.
- **What it supports:** a risk framework for ordered classes, which is what quiet, busy and packed
  are. Its infimum runs over all measurable decision functions, which matches this project's
  phrasing that the match rate is put to every possible procedure.
- **What it does not support or important limitations:** it assumes i.i.d. draws from a joint law,
  needs the loss on ordered labels fixed in advance, and needs the conditional class
  probabilities for the population-level statement. It gives no lower bound against sampling
  noise, and it does not treat censored observations, so it says nothing about this project's
  hidden zero-check-in venues.
- **Where it is used in the report or code:** not yet used. A sixth candidate framework.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-073 Tian, Kong, Valiant (2017)

- **Status:** CHECKED
- **Full citation or dataset/software name:** Tian, K., Kong, W., Valiant, G., "Learning
  Populations of Parameters," Advances in Neural Information Processing Systems 30, 2017.
- **Stable link, DOI, or version:** `proceedings.neurips.cc/paper_files/paper/2017/file/bc4e356fee1972242c8f7eabf4dff517-Paper.pdf`
- **Checked by and date:** read by Claude Code on 2026-10-10. The owner has not read it.
- **Exact relevant location:** Theorem 1 for the upper bound, Proposition 1 for a lower bound that
  holds for every fixed `t` and all `n`, against any estimator.
- **What it supports:** minimax estimation of a population of parameters under binomial thinning,
  which is this project's observation mechanism. Finite-sample rather than asymptotic.
- **What it does not support or important limitations:** it requires `t`, the number of binomial
  draws, to be known. It requires independence across entities, which within-venue friend
  dependence breaks. Its loss is earth-mover distance on the parameter histogram, not a
  three-level labelling loss. It says nothing about censoring at zero.
- **Where it is used in the report or code:** not yet used. A seventh candidate framework, and the
  closest match to the thinning structure.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-074 Tsybakov (2009)

- **Status:** LEAD
- **Full citation or dataset/software name:** Tsybakov, A.B., *Introduction to Nonparametric
  Estimation*, Springer, 2009.
- **Stable link, DOI, or version:** doi.org/10.1007/b13794
- **Checked by and date:** not read. Claude Code could not verify any theorem number on
  2026-10-10.
- **Exact relevant location:** not established. The book is the standard reference for minimax
  lower bounds, and no pinpoint in it is verified.
- **What it supports:** nothing yet, since nothing in it has been checked.
- **What it does not support or important limitations:** cite no theorem from this book until
  someone opens it. It is recorded here so the lead is not lost, not as evidence.
- **Where it is used in the report or code:** not yet used.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-075 Wainwright (2019)

- **Status:** LEAD
- **Full citation or dataset/software name:** Wainwright, M.J., *High-Dimensional Statistics: A
  Non-Asymptotic Viewpoint*, Cambridge University Press, 2019.
- **Stable link, DOI, or version:** publisher page for the 2019 edition
- **Checked by and date:** chapter title and page range verified on the publisher page by Claude
  Code on 2026-10-10. The chapter was not read.
- **Exact relevant location:** Chapter 15, "Minimax lower bounds," pp. 485-523. Contents
  unverified.
- **What it supports:** nothing yet beyond the existence of a non-asymptotic treatment of minimax
  lower bounds at that location.
- **What it does not support or important limitations:** no theorem number is verified. Cite none
  until someone reads the chapter.
- **Where it is used in the report or code:** not yet used.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-076 Noë, Whitaker, Chorley, Pollet (2016)

- **Status:** LEAD
- **Full citation or dataset/software name:** Noë, N., Whitaker, R.M., Chorley, M.J., Pollet,
  T.V., "Birds of a feather locate together? Foursquare checkins and personality homophily,"
  Computers in Human Behavior 58:343-353, 2016.
- **Stable link, DOI, or version:** doi.org/10.1016/j.chb.2016.01.009
- **Checked by and date:** abstract and publisher record read by Claude Code on 2026-10-10. The
  full text could not be opened. Cardiff ORCA and the Northumbria repository both returned HTTP
  403, and the Cyberleninka mirror refused the connection.
- **Exact relevant location:** not established. Only the abstract was seen.
- **What it supports:** from the abstract alone, 174 surveyed Foursquare users, with users alike
  in high conscientiousness, openness or agreeableness sharing checked-in locations. Extraverts
  did not. Neurotic users shared fewer locations than chance.
- **What it does not support or important limitations:** no coefficient from this paper may be
  cited, because none was seen. The abstract describes trait similarity against shared-venue
  counts, with no time window and no joint-posting probability, so it speaks to who visits the
  same venue rather than to who posts when colocated. The owner may have institutional access and
  should close this one out personally.
- **Where it is used in the report or code:** not yet used.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-077 Brown, Noulas, Mascolo, Blondel (2013)

- **Status:** CHECKED
- **Full citation or dataset/software name:** Brown, C., Noulas, A., Mascolo, C., Blondel, V., "A
  place-focused model for social networks in cities," arXiv:1308.2565, 2013.
- **Stable link, DOI, or version:** arxiv.org/abs/1308.2565
- **Checked by and date:** full text read by Claude Code on 2026-10-10 through ar5iv. The owner
  has not read it.
- **Exact relevant location:** Figure 3 for the friendship probability of a colocated pair, Table
  3 for triangles sharing a place, Table 1 for the city samples, and the model section for the
  generator's parameters.
- **What it supports:** calibrated parameters for a social graph generator. A colocated pair are
  friends with probability 0.1 to 0.2 at Food, Nightlife and Residence venues, and 0.05 to 0.1 at
  Professional, Other, and Shop or Service venues. The generator assigns places with probability
  proportional to `q * r^alpha` at `alpha = 0.84`, then creates a tie per shared place with
  probability 0.15 for social venues, 0.08 for semi-social, and 0.01 otherwise, plus triadic
  closure at 0.15. Over 70 percent of triangles share at least one place. Five United States
  cities, 13,396 to 42,791 users each.
- **What it does not support or important limitations:** it gives no joint check-in probability,
  so it says nothing about Assumption 3's posting dependency. It models tie formation, not
  posting. United States cities rather than a European university city. The social graph
  generator is in scope for AI assistance under `AGENTS.md`, so these parameters are usable for
  that component.
- **Where it is used in the report or code:** not yet used. The first source in this repository
  that could calibrate the simulator's social graph generator rather than leave it arbitrary.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-078 Zarezade, Jafarzadeh, Rabiee (2018)

- **Status:** CHECKED
- **Full citation or dataset/software name:** Zarezade, A., Jafarzadeh, S., Rabiee, H.R.,
  "Recurrent spatio-temporal modeling of check-ins in location-based social networks," PLOS ONE
  13(5):e0197683, 2018.
- **Stable link, DOI, or version:** doi.org/10.1371/journal.pone.0197683
- **Checked by and date:** read by Claude Code on 2026-10-10. The owner has not read it.
- **Exact relevant location:** equation (10) for the periodic doubly stochastic intensity,
  equations (11) and (13) for the location-choice weights, Figure 4 for edge recovery, Figure 6
  for the share of users showing friend influence.
- **What it supports:** an explicit functional form in which a friend's earlier check-in raises
  the odds of a later one. Location choice is multinomial with weights
  `w_ucl = sum_i alpha_ui sum_{j: t_j < t, l_j = l} exp(-(t - t_j))`, where `alpha_vu` is a latent
  influence network. About 80 percent of users show influence from a friend's location, and 64
  percent of edges recover from 150 events per user. Real data: 1,000 Brazilian users, mean degree
  6.4, about 60,000 check-ins over 10 weeks in 2015.
- **What it does not support or important limitations:** no fitted `alpha` magnitudes are
  published, so the form carries no calibrated strength. The kernel admits only `t_j < t`, which
  excludes simultaneous colocation by construction. Assumption 3 concerns friends at the same
  venue at the same time, so this source gives a cascade over time rather than the simultaneous
  dependency the assumption states.
- **Where it is used in the report or code:** not yet used.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-079 Yuan, Li, Bertozzi, Brantingham, Porter (2019)

- **Status:** CHECKED
- **Full citation or dataset/software name:** Yuan, B., Li, H., Bertozzi, A.L., Brantingham,
  P.J., Porter, M.A., "Multivariate Spatiotemporal Hawkes Processes and Network Reconstruction,"
  arXiv:1811.06321. Search metadata reports publication in SIAM Journal on Mathematics of Data
  Science 1(2):356-382, 2019, which Claude Code did not verify against the journal.
- **Stable link, DOI, or version:** arxiv.org/abs/1811.06321
- **Checked by and date:** the arXiv version read by Claude Code on 2026-10-10. The owner has not
  read it. The journal version is unverified.
- **Exact relevant location:** equation (4) for the intensity, Section 4.1 for the synthetic
  parameters, Section 4.2 for the Gowalla data.
- **What it supports:** the multivariate Hawkes form
  `lambda_u(t,x,y) = mu_u(x,y) + sum_{t > t_i} K_{u_i u} g(x - x_i, y - y_i, t - t_i)`, with
  `g = g_1(t) g_2(x,y)`. Gowalla sample: 196,591 users, 950,327 edges, 6,442,890 check-ins.
- **What it does not support or important limitations:** fitted excitation values appear only for
  synthetic runs, at `omega = 0.6`, `sigma^2 = 0.3` and `gamma_u = 0.2`, and never for the Gowalla
  data. Like `SRC-078` it excludes simultaneity. The journal citation needs checking before use.
- **Where it is used in the report or code:** not yet used.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-080 Bakshy, Rosenn, Marlow, Adamic (2012)

- **Status:** CHECKED
- **Full citation or dataset/software name:** Bakshy, E., Rosenn, I., Marlow, C., Adamic, L.,
  "The role of social networks in information diffusion," Proceedings of the 21st International
  Conference on World Wide Web (WWW '12), pp. 519-528, 2012.
- **Stable link, DOI, or version:** arxiv.org/abs/1201.4145
- **Checked by and date:** full text read by Claude Code on 2026-10-10 through ar5iv. The owner
  has not read it.
- **Exact relevant location:** Section 4 for the sharing probabilities, Section 4.1 for latency,
  Section 5.1 and Figure 6 for tie strength.
- **What it supports:** the only calibrated per-tie contagion probability found anywhere in this
  search. Sharing probability is 0.191 percent when exposed through the feed and 0.025 percent
  when not, a risk ratio of 7.37 with a 95 percent confidence interval of [7.23, 7.72]. Median
  latency is 6 hours when exposed against 20 hours when not. With one sharing friend, a
  three-comment tie raises sharing 2.83 times through the feed and 3.84 times without it, against
  a no-comment tie. N = 253,238,367 subjects over 7 weeks, 75,888,466 URLs.
- **What it does not support or important limitations:** the act is resharing a URL, the exposure
  channel is a news feed, and no part of the study involves physical colocation. Transferring
  these magnitudes to colocated bar check-ins would be an unsupported leap, and the only
  defensible use is as an order-of-magnitude reference for a cascade mechanism.
- **Where it is used in the report or code:** not yet used.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-081 Zhang et al. (2013)

- **Status:** CHECKED
- **Full citation or dataset/software name:** Zhang, Z., Zhou, L., Zhao, X., Wang, G., Su, Y.,
  Metzger, M., Zheng, H., Zhao, B.Y., "On the Validity of Geosocial Mobility Traces,"
  Proceedings of the 12th ACM Workshop on Hot Topics in Networks (HotNets-XII), Article 11, 6
  pages, 2013.
- **Stable link, DOI, or version:** `sites.cs.ucsb.edu/~ravenben/publications/pdf/foursquare-hotnets13.pdf`.
  No DOI was verified.
- **Checked by and date:** full text read by Claude Code on 2026-10-10. The owner has not read it.
- **Exact relevant location:** Table 1 on page 2 for the dataset, Section 3 for the definition of
  a visit, Section 4.1 for the matching thresholds, Figure 1 on page 4 for the partition, Section
  5.3 and Figure 5 for the per-user ratios.
- **What it supports:** the only bounded per-visit check-in probability found in this search.
  3,525 of 30,835 GPS-detected visits produced an honest Foursquare check-in, giving 0.114, which
  the authors round to roughly 10 percent. 27,310 visits, 89 percent of all visits, produced no
  check-in. Sample: 244 users, 14.2 days per user on average, 14,297 check-ins, 30,835 visits, 2.6
  million GPS points. A visit is a stay of 6 or more minutes; matching used 500 metres and 30
  minutes.
- **What it does not support or important limitations:** the paper never publishes the cross-user
  distribution of that ratio, only the population aggregate, so it gives the mean of a per-adopter
  posting probability and nothing about its shape. The sample is self-selected toward heavy
  Foursquare users. A visit includes homes, workplaces and gas stations, so the figure is not
  bar-specific and is not restricted to the public venues this project admits.
- **Where it is used in the report or code:** not yet used. The one available anchor for the mean
  of the per-adopter posting probability in Assumption 2.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-082 Wang, Schoenebeck, Zheng, Zhao (2016)

- **Status:** CHECKED
- **Full citation or dataset/software name:** Wang, G., Schoenebeck, S.Y., Zheng, H., Zhao, B.Y.,
  "'Will Check-in for Badges': Understanding Bias and Misbehavior on Location-based Social
  Networks," Proceedings of the Tenth International AAAI Conference on Web and Social Media
  (ICWSM), pp. 417-426, 2016.
- **Stable link, DOI, or version:** `gangw.cs.illinois.edu/foursquare.pdf`
- **Checked by and date:** full text read by Claude Code on 2026-10-10. The owner has not read it.
- **Exact relevant location:** Figure 1 for the concentration of missing check-ins within a user,
  Figure 3 for the cross-user CDF of extraneous ratios, Tables 4 through 7 for the stated reasons,
  Figures 6 and 7 for reasons by point-of-interest category.
- **What it supports:** two things. First, missing check-ins concentrate at particular venues
  within a user: for roughly 60 percent of users, 5 locations account for over half their missing
  check-ins, and for 20 percent of users a single location accounts for over 40 percent. Second,
  the stated reasons are venue-indexed. The leading reason for a missing check-in is "This place is
  not interesting," at 59.2 percent of Turkers and 34.7 percent of primary users. Extraneous
  check-ins are driven by badges, coupons, mayorships, and appearing cool or interesting. It reuses
  the `SRC-081` dataset and adds a survey of 108 MTurk users and 23 of the 244 primary users.
- **What it does not support or important limitations:** every per-user ratio here divides by
  check-ins, not by visits, so none of them measures the per-visit probability Assumption 2 names.
  Visit frequency confounds the within-user concentration in Figure 1. Figure 7 does include
  Nightlife as a category but publishes no numbers inside it, so it gives no within-nightlife
  result. Figures 6 and 7 are evidence against the venue-independence half of Assumption 2, but
  only across categories including homes, workplaces and schools, all outside this project's scope.
- **Where it is used in the report or code:** not yet used.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-083 Muchnik et al. (2013)

- **Status:** LEAD
- **Full citation or dataset/software name:** Muchnik, L., Pei, S., Parra, L.C., Reis, S.D.S.,
  Andrade, J.S. Jr., Havlin, S., Makse, H.A., "Origins of power-law degree distribution in the
  heterogeneity of human activity in social networks," Scientific Reports 3:1783, 2013. A
  corrigendum exists at Scientific Reports 5:15932, 2015, and must be cited alongside it.
- **Stable link, DOI, or version:** doi.org/10.1038/srep01783, arXiv:1304.4523
- **Checked by and date:** arXiv record and abstract read by Claude Code on 2026-10-10. The full
  text was not opened.
- **Exact relevant location:** not established. Only the abstract was seen.
- **What it supports:** nothing this project needs. The paper analyses node degree and the volume
  of a user's activity, both unbounded counts.
- **What it does not support or important limitations:** it cannot bear on Assumption 2. A bounded
  probability cannot be power-law distributed in the sense this paper uses, so its heavy-tailed
  finding about volume is not evidence for a heavy-tailed per-visit probability. Volume also
  conflates how often someone goes out with how likely they are to post once there. This entry
  exists to record that the lead was checked and found off-target, so nobody pursues it again.
- **Where it is used in the report or code:** not used, and should not be.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-084 Kim et al. (2020)

- **Status:** CHECKED
- **Full citation or dataset/software name:** Kim, J.-S., Jin, H., Kavak, H., Rouly, O.C.,
  Crooks, A., Pfoser, D., Wenk, C., Züfle, A., "Location-Based Social Network Data Generation
  Based on Patterns of Life," IEEE International Conference on Mobile Data Management (MDM), 2020.
- **Stable link, DOI, or version:** `par.nsf.gov/servlets/purl/10187148`
- **Checked by and date:** read by Claude Code on 2026-10-10. The owner has not read it.
- **Exact relevant location:** Abstract and page 1, on complete capture of the simulated
  population.
- **What it supports:** the closest published simulator to this project's. It logs every agent
  site visit and claims complete capture of the simulated population.
- **What it does not support or important limitations:** it defines no per-visit posting
  probability and no distribution over agents for one. Prior art therefore sidesteps the question
  Assumption 2 asks rather than answering it, which means this project's simulator is not
  reproducing an existing design at this point and must justify its own choice.
- **Where it is used in the report or code:** not yet used. Relevant as prior art for the
  simulator's design.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-085 Amiri et al. (2024)

- **Status:** CHECKED
- **Full citation or dataset/software name:** Amiri, H., et al., "The Patterns of Life Human
  Mobility Simulation," arXiv:2410.00185, 2024.
- **Stable link, DOI, or version:** arxiv.org/abs/2410.00185
- **Checked by and date:** read by Claude Code on 2026-10-10. The owner has not read it. The full
  author list was not transcribed and must be completed before citation.
- **Exact relevant location:** not pinpointed beyond the simulator's description.
- **What it supports:** the successor to `SRC-084`, with the same property. It defines no
  per-visit posting probability.
- **What it does not support or important limitations:** the author list in this entry is
  incomplete. Same limitation as `SRC-084`.
- **Where it is used in the report or code:** not yet used.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-086 Xu et al. (2018)

- **Status:** CHECKED
- **Full citation or dataset/software name:** Xu, F., Zhang, G., Chen, Z., Huang, J., Li, Y.,
  Yang, D., Zhao, B.Y., Meng, F., "Understanding Motivations behind Inaccurate Check-ins,"
  Proceedings of the ACM on Human-Computer Interaction 2, CSCW, Article 188, 22 pages, 2018.
- **Stable link, DOI, or version:** doi.org/10.1145/3274457. Open copy at
  `fi.ee.tsinghua.edu.cn/public/publications/f44f8664-92c9-11eb-96bc-0242ac120003.pdf`
- **Checked by and date:** full text read by Claude Code on 2026-10-10 through the Tsinghua copy,
  after the ACM page returned HTTP 403 on an earlier attempt. The owner has not read it.
- **Exact relevant location:** Section 5.1 for the dataset and categories, Section 6.2 with Figure
  7(b) for the rank effect, Figure 10 for the visitor-diversity effect, Figure 11(b) and hypothesis
  H4 for the self-presentation finding, Section 2 for how the recommendation list is ranked.
- **What it supports:** the strongest matched-ground-truth evidence that check-in behavior depends
  on properties of the individual venue. The share of "nearby" check-ins rises from 16 percent to
  60 percent as the user's actual venue falls from rank 1 to rank 10 in the app's recommendation
  list, which is ranked on venue popularity and visit history. At venues visited by fewer than 3
  distinct users, over 70 percent of associated check-ins are fake. Fake check-ins concentrate at
  famous scenic sites, high-end workplaces and restaurants, which the authors attribute to
  self-presentation. Dataset: 276,346 WeChat users, 17 April to 17 May 2017, over 440,000
  check-ins matched against over 600 million localization records.
- **What it does not support or important limitations:** it reports no per-visit posting
  probability, and its sixteen categories contain no nightlife category, so it gives no
  within-nightlife result. Its mechanism is a user picking the wrong entry from a ranked list,
  which is mis-tagging rather than silence. This project's app accepts a check-in only from a user
  at the venue's own location, so that failure mode is largely designed out, and these numbers
  transfer to this project only with that caveat stated.
- **Where it is used in the report or code:** not yet used.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-087 Rost, Barkhuus, Cramer, Brown (2013)

- **Status:** CHECKED
- **Full citation or dataset/software name:** Rost, M., Barkhuus, L., Cramer, H., Brown, B.,
  "Representation and communication: challenges in interpreting large social media datasets,"
  Proceedings of the 2013 Conference on Computer Supported Cooperative Work (CSCW '13), pp.
  357-362.
- **Stable link, DOI, or version:** doi.org/10.1145/2441776.2441817. Author copy at
  `hcramer.wordpress.com/wp-content/uploads/2013/02/rostetal_cscw13.pdf`
- **Checked by and date:** full text read by Claude Code on 2026-10-10. The owner has not read it.
- **Exact relevant location:** the Results section for the venue distribution, the "External
  Motivation Factors" section for the promotion case, the Discussion for the claim about visitor
  numbers.
- **What it supports:** that a promotion at one venue moves its check-in count by orders of
  magnitude. A RadioShack discount offer took one chain's daily check-ins from 5 to 12 on 13 and 14
  November, then to 58, then 196, then 1323. Across the Foursquare firehose, 5,499,469 venues
  received check-ins in four weeks, with a mean of 7.6 per venue, a median of 2, and a standard
  deviation of 46.7, and the top 20 percent of venues hold 74 percent of check-ins. The Discussion
  states that the number of check-ins has no clear correspondence with visitor numbers.
- **What it does not support or important limitations:** it has no ground-truth attendance per
  venue, so the promotion case cannot be separated into more visitors against a higher posting rate
  per visitor. The promotion case is retail rather than nightlife. This is the primary source
  `SRC-082` cites for uneven missing-check-in rates across venues.
- **Where it is used in the report or code:** not yet used.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-088 Chen, Cao, Wang, Xu, Kostakos, Li (2020)

- **Status:** CHECKED
- **Full citation or dataset/software name:** Chen, X., Cao, Y., Wang, Y., Xu, F., Kostakos, V.,
  Li, Y., "Will You Come Back / Check-in Again? Understanding Characteristics Leading to Urban
  Revisitation and Re-check-in," Proceedings of the ACM on Interactive, Mobile, Wearable and
  Ubiquitous Technologies 4(3), Article 76, 27 pages, 2020.
- **Stable link, DOI, or version:** doi.org/10.1145/3411812. Copy at
  `hci.stanford.edu/publications/2020/chen_revisit/IMWUT2020-Revisit.pdf`
- **Checked by and date:** Sections 1, 4 and 5 read by Claude Code on 2026-10-10. The owner has not
  read it.
- **Exact relevant location:** Figure 2(b) for revisitation against venue popularity, Figures 3(a)
  and 3(b) for re-check-in against venue popularity, Section 1 for the authors' statement on
  conflating the two behaviors, Figure 4(b) for the category breakdown.
- **What it supports:** that physical return and posted return move in opposite directions with
  venue popularity. On localization data, the revisitation rate falls from 72.5 percent to 56.2
  percent as the number of people visiting a venue passes 100. On Foursquare data, the re-check-in
  rate rises from 26.1 percent to 60.8 percent as the number of people checking in rises from 2 to
  4 up to over 2000, and from 19.8 percent to 71.2 percent with venue check-in volume. Section 1
  states that treating visitation and check-in as the same behavior lacks supporting evidence.
- **What it does not support or important limitations:** the two datasets cover different
  populations, so this is not a matched posting probability given presence. Figure 4(b) includes
  Nightlife as a category but reports no within-nightlife variation. The divergence is the single
  most important caution found for this project, because it says the posted signal and the true
  crowd diverge systematically with venue popularity rather than at random.
- **Where it is used in the report or code:** not yet used.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-089 Bellogín, Dietz, Ricci, Sánchez (2025)

- **Status:** REJECTED
- **Full citation or dataset/software name:** Bellogín, A., Dietz, L.W., Ricci, F., Sánchez, P.,
  "Point of Interest Recommendation: Pitfalls and Viable Solutions," arXiv:2507.13725, 2025.
- **Stable link, DOI, or version:** arxiv.org/abs/2507.13725
- **Checked by and date:** Section 4.1 read by Claude Code on 2026-10-10, and its citation checked
  against the cited source.
- **Exact relevant location:** Section 4.1, Pitfall 4.
- **What it supports:** nothing. It is recorded here as a caution, not as a source.
- **What it does not support or important limitations:** Pitfall 4 asserts that particular
  nightlife spots may be underrepresented in location-based social network datasets, and cites
  Wang et al. 2016 for it. We read Wang et al., logged here as `SRC-082`, and it contains no such
  nightlife-specific measurement. This is an unsupported extrapolation in a 2025 preprint. It is
  also the exact claim this project would most like to be true, which is why it is logged
  explicitly: so that nobody later cites it as the within-nightlife evidence that is still
  missing.
- **Where it is used in the report or code:** not used. Do not cite for the nightlife claim.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-090 Li, Steiner, Wang, Zhang, Bao (2013)

- **Status:** LEAD
- **Full citation or dataset/software name:** Li, Y., Steiner, M., Wang, L., Zhang, Z.-L., Bao,
  J., "Exploring Venue Popularity in Foursquare," NetSciCom, 2013.
- **Stable link, DOI, or version:** `users.wpi.edu/~yli15/Includes/NetSciCom13Foursquare.pdf`
- **Checked by and date:** not read. Surfaced by Claude Code on 2026-10-10 and left unopened.
- **Exact relevant location:** not established.
- **What it supports:** nothing yet.
- **What it does not support or important limitations:** unread. Recorded so the lead on venue
  popularity bias is not lost.
- **Where it is used in the report or code:** not yet used.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-091 Tasse, Liu, Sciuto, Hong (2017)

- **Status:** CHECKED
- **Full citation or dataset/software name:** Tasse, D., Liu, Z., Sciuto, A., Hong, J.I., "State
  of the Geotags: Motivations and Recent Changes," Proceedings of the Eleventh International AAAI
  Conference on Web and Social Media (ICWSM), 2017.
- **Stable link, DOI, or version:** `dantasse.com/docs/state_of_the_geotags_icwsm2017.pdf`
- **Checked by and date:** full text read by Claude Code on 2026-10-10. The owner has not read it.
- **Exact relevant location:** the "Study 3 Results" section, Table 4, Figure 5 and Figure 6.
- **What it supports:** that the leading stated motivation for geotagging is an attribute of the
  place. "To show that I was at a cool, amazing, special, or popular place" outranks the
  purpose-driven options in Figure 6, with "keep family and friends updated" second. The paper
  reports that 70.0 percent of geotags fall at places the respondent visits annually or less.
  Three studies: 4 million tweets and 49 million Flickr photos, 78 surveyed Twitter geotaggers,
  and 400 valid MTurk respondents across six platforms.
- **What it does not support or important limitations:** stated motivation rather than observed
  behavior, an MTurk sample, and Instagram and Twitter rather than a check-in app. The rarity
  result contrasts routine places with special ones, so it is an across-category finding. The
  paper reports no nightlife breakdown. The rarity result is also the least transferable to this
  project, because this app records one check-in per drink, which is a different act from an
  occasional expressive geotag, and because the app's core use is repeat visits to nearby bars.
- **Where it is used in the report or code:** not yet used.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-092 Cramer, Rost, Holmquist (2011)

- **Status:** CHECKED
- **Full citation or dataset/software name:** Cramer, H., Rost, M., Holmquist, L.E., "Performing a
  Check-in: Emerging Practices, Norms and Conflicts in Location-Sharing Using Foursquare,"
  Proceedings of the 13th International Conference on Human Computer Interaction with Mobile
  Devices and Services (MobileHCI), 2011. The ACM record lists pp. 57-66, which the preprint does
  not print.
- **Stable link, DOI, or version:** doi.org/10.1145/2037373.2037384. Full text at
  `diva-portal.org/smash/get/diva2:469592/FULLTEXT02`
- **Checked by and date:** full text read by Claude Code on 2026-10-10. The owner has not read it.
- **Exact relevant location:** the "Motivations for Sharing" section, the "Gamification" section,
  and the Conclusions.
- **What it supports:** venue-attribute selectivity within commercial venues, which is stronger
  than a category-level finding. The Conclusions state that many participants checked in at places
  they perceived as more interesting and tried to minimise annoyance from check-ins they thought
  would appear uninteresting. One interviewee describes endorsement selectivity between commercial
  venues, checking in at local businesses and not at non-local ones. Documented motivations:
  coordination, endorsement of a venue, self-presentation, mayorships and badges, voyeurism, and
  personal bookmarking. Method: 20 semi-structured interviews plus 47 online survey responses.
- **What it does not support or important limitations:** the study never contrasts two bars, so it
  gives no within-nightlife measurement. Small samples. It describes Foursquare as it stood in
  2011, whose mayorship and badge mechanics changed after 2014, so the gamification motivations may
  describe a product that no longer exists.
- **Where it is used in the report or code:** not yet used.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-093 Frith (2014)

- **Status:** CHECKED
- **Full citation or dataset/software name:** Frith, J., "Communicating Through Location: The
  Understood Meaning of the Foursquare Check-In," Journal of Computer-Mediated Communication
  19(4):890-905, 2014.
- **Stable link, DOI, or version:** doi.org/10.1111/jcc4.12087
- **Checked by and date:** full text read by Claude Code on 2026-10-10. The owner has not read it.
- **Exact relevant location:** page 901.
- **What it supports:** that selectivity exists and that its strength differs by user type. The
  paper reports that users with social or life-cataloguing motivations checked in only at more
  interesting locations they wanted to highlight, while users who treated Foursquare as a game
  checked in everywhere. Method: 36 interviews with frequent Foursquare users, grounded theory,
  2011 fieldwork.
- **What it does not support or important limitations:** "interesting" is not resolved within
  nightlife, so the finding is across-category as stated. Frequent users only, United States only,
  and pre-2014 Foursquare. The finding matters structurally rather than numerically: a selectivity
  strength that varies by user type is a person-by-venue interaction, which means a posting
  probability could not be written as a person factor times a venue factor even if both were
  measured.
- **Where it is used in the report or code:** not yet used.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-094 Patil, Norcie, Kapadia, Lee (2012)

- **Status:** CHECKED
- **Full citation or dataset/software name:** Patil, S., Norcie, G., Kapadia, A., Lee, A.,
  "Reasons, Rewards, Regrets: Privacy Considerations in Location Sharing as an Interactive
  Practice," Proceedings of the Eighth Symposium on Usable Privacy and Security (SOUPS), 2012.
- **Stable link, DOI, or version:** `people.cs.pitt.edu/~adamlee/pubs/2012/patil2012soups.pdf`
- **Checked by and date:** full text read by Claude Code on 2026-10-10. The owner has not read it.
- **Exact relevant location:** Tables 1 to 4, and Section 4.
- **What it supports:** venue-attached motivations with percentages. "I wanted to tell my friends
  that I liked the place" scores 57.18 percent, "I wanted to appear cool and interesting by sharing
  where I was" 41.71 percent, being in a different city 41.99 percent, wanting people to join them
  38.95 percent, promoting an event 24.86 percent, and "I was offered a coupon or some other
  financial incentive" 19.89 percent. Table 2 lists "Visiting an unusual or non-routine location"
  at 5.68 percent. Method: online survey, 362 valid responses, Craigslist recruitment in ten
  United States cities.
- **What it does not support or important limitations:** the paper reports nothing within
  nightlife. Stated reasons rather than observed behavior. The coupon figure is the cleanest
  pressure on Assumption 2 found in the motivation literature, because a bar that runs a promotion
  and an otherwise identical bar that does not would draw different posting rates from the same
  person, and bars are exactly the kind of venue that runs promotions.
- **Where it is used in the report or code:** not yet used.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-095 Lindqvist, Cranshaw, Wiese, Hong, Zimmerman (2011)

- **Status:** CHECKED
- **Full citation or dataset/software name:** Lindqvist, J., Cranshaw, J., Wiese, J., Hong, J.,
  Zimmerman, J., "I'm the Mayor of My House: Examining Why People Use Foursquare, a
  Social-Driven Location Sharing Application," Proceedings of the SIGCHI Conference on Human
  Factors in Computing Systems (CHI), 2011.
- **Stable link, DOI, or version:** doi.org/10.1145/1978942.1979295. Full text at
  `users.cs.utah.edu/~wiese/publications/chi2011-foursquare.pdf`
- **Checked by and date:** full text read by Claude Code on 2026-10-10. An earlier attempt the
  same day reached only the authors' talk deck, and this entry supersedes what that attempt
  reported. The owner has not read it.
- **Exact relevant location:** the Survey 1 section "Why People Don't Check-In," and the Survey 2
  section "Where People Check-In" with Figure 1.
- **What it supports:** that posting varies by venue type within one user. Participants reported
  visiting fast-food restaurants, doctors and banks without checking in, for self-presentation
  reasons (Survey 1, N = 18). Figure 1 (Survey 2, N = 219) gives check-in frequency for
  restaurants, bars, school, doctor, home and work. Most participants never check in at a school,
  most do not check in at a doctor, and home and work are bimodal. Methods: 6 interviews, an
  18-person qualitative survey, and a 219-respondent quantitative survey.
- **What it does not support or important limitations:** Figure 1 reports check-in frequency, not
  posting conditional on visiting, so it confounds how often someone goes with how often they post
  once there. It reports venue types rather than individual venues, so it gives no
  within-nightlife result. Self-report with no matched presence data, a self-selected United
  States sample from 2010, and pre-2014 Foursquare mechanics.
- **Where it is used in the report or code:** not yet used.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-096 Guha and Birnholtz (2013)

- **Status:** LEAD
- **Full citation or dataset/software name:** Guha, S., Birnholtz, J., "Can You See Me Now?
  Location, Visibility and the Management of Impressions on Foursquare," Proceedings of the 15th
  International Conference on Human-Computer Interaction with Mobile Devices and Services
  (MobileHCI), 2013.
- **Stable link, DOI, or version:** doi.org/10.1145/2493190.2493209
- **Checked by and date:** paywalled. Claude Code saw abstract-level text only on 2026-10-10 and
  verified no quotation, sample size or figure.
- **Exact relevant location:** not established.
- **What it supports:** nothing verified. The abstract describes check-in transience and
  visibility-dependent disclosure.
- **What it does not support or important limitations:** nothing from it may be cited yet.
- **Where it is used in the report or code:** not yet used.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-097 Instagram geotag motivation survey (2022)

- **Status:** LEAD
- **Full citation or dataset/software name:** an Instagram geotag motivation survey, Hong Kong,
  reported as published in the International Journal of Internet, Broadcasting and Communication,
  2022. Authors and exact title unknown.
- **Stable link, DOI, or version:** none verified.
- **Checked by and date:** the host refused the connection on 2026-10-10. Nothing was verified.
- **Exact relevant location:** not established.
- **What it supports:** nothing. A search summary reported 411 respondents and motivations
  including showing off and reputation gaining, and Claude Code verified none of that.
- **What it does not support or important limitations:** this entry records an unverified lead
  only. Do not cite it. The citation is incomplete and must be resolved before any use.
- **Where it is used in the report or code:** not used.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-098 Song, Koren, Wang, Barabási (2010)

- **Status:** CHECKED
- **Full citation or dataset/software name:** Song, C., Koren, T., Wang, P., Barabási, A.-L.,
  "Modelling the scaling properties of human mobility," Nature Physics 6:818, 2010.
- **Stable link, DOI, or version:** arxiv.org/abs/1010.0436, read in place of the journal version
- **Checked by and date:** the arXiv full text read by Claude Code on 2026-10-10, reported as
  identical in content to the journal article. The owner has not read it.
- **Exact relevant location:** equation (1), equation (2), Figure 1a, Figure 1b, Figure 3a, Figure
  3b.
- **What it supports:** the shape of one person's visits across their own locations. Visit
  frequency follows Zipf's law, `f_k ~ k^(-zeta)` with `zeta = 1.2 +/- 0.1`. Distinct locations
  grow as `S(t) ~ t^mu` with `mu = 0.6 +/- 0.02`. The exploration probability is
  `P_new = rho * S^(-gamma)` with `gamma = 0.21 +/- 0.02`, and `P(rho)` is approximately normal
  with mean about 0.6. The return probability equals the visit frequency. 89 percent of users
  visit fewer than 148 locations in one year. Data: 3 million mobile phone users over one year,
  plus 1,000 users of a location-based service sampled hourly for two weeks.
- **What it does not support or important limitations:** it measures the VISIT distribution and
  says nothing about posting. Locations are phone-tower cells rather than venues, so the exponent
  is measured at a coarser granularity than a single bar. Using it for the simulator's venue
  choice is defensible; using it for Assumption 2 is not.
- **Where it is used in the report or code:** not yet used. Candidate calibration for how the
  simulator spreads an agent's visits across venues.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-099 Alessandretti, Sapiezynski, Sekara, Lehmann, Baronchelli (2018)

- **Status:** CHECKED
- **Full citation or dataset/software name:** Alessandretti, L., Sapiezynski, P., Sekara, V.,
  Lehmann, S., Baronchelli, A., "Evidence for a conserved quantity in human mobility," Nature
  Human Behaviour 2(7):485-491, 2018.
- **Stable link, DOI, or version:** arxiv.org/abs/1609.03526 version 3, read in place of the
  paywalled journal version
- **Checked by and date:** the arXiv full text read by Claude Code on 2026-10-10. The journal
  version was not opened. The owner has not read it.
- **Exact relevant location:** Figure 1b, Figure 1c, Figures 2a to 2f, and the Results section.
- **What it supports:** that a person's set of familiar locations saturates. The activity set,
  defined as locations visited at least twice with more than 10 minutes per week averaged over a
  20-week window, has a typical size of about 25. Discovery follows Heaps' law `L_i ~ t^alpha`,
  with mean `alpha` of 0.71, 0.63, 0.68 and 0.76 across four datasets. Individual capacity is
  conserved for 85 to 99 percent of each sample. A newly discovered location joins the activity
  set with probability 7 to 20 percent. Data: about 40,000 individuals, four datasets, 10 to 24
  months.
- **What it does not support or important limitations:** it measures the VISIT distribution, not
  posting. The figure of about 25 counts all location types, so the number of familiar bars is
  smaller and unmeasured here. Two of the four samples are students or faculty, which happens to
  match this project's population better than most sources do.
- **Where it is used in the report or code:** not yet used. Bears on how many venues a simulated
  agent should treat as familiar.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-100 Schläpfer et al. (2021)

- **Status:** CHECKED
- **Full citation or dataset/software name:** Schläpfer, M., et al., "The universal visitation law
  of human mobility," Nature 593:522-527, 2021. The full author list was not transcribed and must
  be completed before citation.
- **Stable link, DOI, or version:** doi.org/10.1038/s41586-021-03480-9. Read at
  `michael.szell.net/downloads/schlapfer2021uvl.pdf`
- **Checked by and date:** full text read by Claude Code on 2026-10-10. The owner has not read it.
- **Exact relevant location:** equation (1), Figure 1d, Figure 1e, Figure 3d.
- **What it supports:** an inverse-square visitation law, `rho_i(r,f) = mu_i / (r f)^eta` with
  `eta` about 2. The fitted collapse gives `eta = 2.05` with standard error 0.018 and
  `R^2 = 0.993`, and `eta = 2.17` with standard error 0.055 and `R^2 = 0.973` for one Boston
  location. Grid cells are 500 metres for Greater Boston and Singapore and 1 kilometre elsewhere.
  Regions: Greater Boston, Lisbon, Porto, Braga, Singapore, Dakar, Abidjan.
- **What it does not support or important limitations:** this is a LOCATION-level law, not a
  within-person distribution. It counts how many people visit a place at frequency `f` from
  distance `r`. Reading it as one person's spread across their own venues would misuse it, and
  this entry records that warning explicitly. The author list here is incomplete.
- **Where it is used in the report or code:** not yet used.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-101 Pappalardo et al. (2015)

- **Status:** CHECKED
- **Full citation or dataset/software name:** Pappalardo, L., et al., "Returners and explorers
  dichotomy in human mobility," Nature Communications 6:8166, 2015. The full author list was not
  transcribed and must be completed before citation.
- **Stable link, DOI, or version:** doi.org/10.1038/ncomms9166. Read through the Harvard DASH
  open-access copy.
- **Checked by and date:** full text read by Claude Code on 2026-10-10. The owner has not read it.
- **Exact relevant location:** equation (2), Figure 4, Table 1.
- **What it supports:** that the shape of individual mobility is itself heterogeneous rather than
  a single population pattern. The ratio `s_k = r_g^(k) / r_g` is bimodal, with peaks at 0 for
  explorers and 1 for returners, and the population balances at `k = 4` in the GSM data. Data:
  67,000 GSM subscribers over three months, drawn from about 3 million, plus about 46,000
  GPS-tracked vehicles over May 2011.
- **What it does not support or important limitations:** it describes travelled distance rather
  than venue counts, and the GPS sample tracks vehicles rather than people. It measures the VISIT
  distribution. Its relevance is structural: it warns that assuming one shared mobility shape
  across a population hides a split, which is the same kind of error Assumption 2 risks by
  assuming one shape for posting.
- **Where it is used in the report or code:** not yet used.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-102 González, Hidalgo, Barabási (2008)

- **Status:** LEAD
- **Full citation or dataset/software name:** González, M.C., Hidalgo, C.A., Barabási, A.-L.,
  "Understanding individual human mobility patterns," Nature 453:779-782, 2008.
- **Stable link, DOI, or version:** not verified.
- **Checked by and date:** not opened. Surfaced by Claude Code on 2026-10-10, which reported no
  numbers from it.
- **Exact relevant location:** not established.
- **What it supports:** nothing yet.
- **What it does not support or important limitations:** unread. Recorded as the standard
  predecessor to `SRC-098`.
- **Where it is used in the report or code:** not yet used.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-103 Hu, Koren, Volinsky (2008)

- **Status:** CHECKED
- **Full citation or dataset/software name:** Hu, Y., Koren, Y., Volinsky, C., "Collaborative
  Filtering for Implicit Feedback Datasets," IEEE International Conference on Data Mining (ICDM),
  2008.
- **Stable link, DOI, or version:** `yifanhu.net/PUB/cf.pdf`
- **Checked by and date:** Sections 2, 3 and 4 read by Claude Code on 2026-10-10. The owner has
  not read it.
- **Exact relevant location:** Section 2 for the treatment of unobserved actions, Section 4 for
  the binarization and the confidence weight, cost function (3), and the alternating least squares
  updates in equations (4) and (5).
- **What it supports:** the standard treatment of a user-by-item binary matrix. It sets
  `p_ui = 1` when `r_ui > 0` and 0 otherwise, sets a confidence `c_ui = 1 + alpha * r_ui`, and
  minimizes `sum_{u,i} c_ui (p_ui - x_u' y_i)^2 + lambda (sum ||x_u||^2 + sum ||y_i||^2)`.
  Section 2 states that an unobserved action sets `r_ui` to zero.
- **What it does not support or important limitations:** it gives no variance decomposition, no
  probability, and no separation of "did not post" from "was never there". The paper acknowledges
  that asymmetry and handles it by downweighting rather than by modelling it, which is exactly
  the distinction this project needs. It requires `alpha` and `lambda` chosen by cross-validation
  and a latent dimension between 20 and 200 in the paper's experiments. It optimizes a squared
  error surrogate rather than a likelihood, so nothing carries a standard error.
- **Where it is used in the report or code:** not yet used. One candidate formalism for
  Assumption 2, listed without preference.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-104 Liang, Charlin, McInerney, Blei (2016)

- **Status:** CHECKED
- **Full citation or dataset/software name:** Liang, D., Charlin, L., McInerney, J., Blei, D.M.,
  "Modeling User Exposure in Recommendation," Proceedings of the 25th International Conference on
  World Wide Web (WWW), 2016. arXiv:1510.07025.
- **Stable link, DOI, or version:** arxiv.org/abs/1510.07025
- **Checked by and date:** Sections 2, 3.1, 3.2 and 3.3 read by Claude Code on 2026-10-10. The
  owner has not read it.
- **Exact relevant location:** equation (1) for the exposure and response model, equation (2) for
  the log joint, equation (3) for the exposure link, equation (4) for the E-step expectation.
- **What it supports:** the closest formal counterpart to this project's censoring found in the
  recommender literature. It writes `a_ui ~ Bernoulli(mu_ui)` for exposure, with
  `y_ui | a_ui = 1 ~ N(theta_u' beta_i, lambda_y^-1)` and `y_ui | a_ui = 0` a point mass at zero,
  and sets `mu_ui = sigmoid(psi_u' x_i)` with exposure covariates. The paper names venue location
  as one such covariate. Exposure is observed when `y_ui > 0` and latent otherwise, which is the
  structural analogue of a venue whose true crowd is unseen because nobody posted.
- **What it does not support or important limitations:** it does not prove that exposure and
  preference separate, and the paper reports that performance is highly sensitive to how `mu_ui`
  is set, so the prior does the identifying work. It needs exposure covariates or a per-item
  popularity prior. It needs EM and has no closed-form estimator.
- **Where it is used in the report or code:** not yet used. A second candidate formalism.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-105 Elkan and Noto (2008)

- **Status:** CHECKED
- **Full citation or dataset/software name:** Elkan, C., Noto, K., "Learning Classifiers from Only
  Positive and Unlabeled Data," Proceedings of the 14th ACM SIGKDD International Conference on
  Knowledge Discovery and Data Mining (KDD), pp. 213-220, 2008.
- **Stable link, DOI, or version:** `cseweb.ucsd.edu/~elkan/posonly.pdf`
- **Checked by and date:** Sections 1, 2 and 3 read by Claude Code on 2026-10-10. The owner has
  not read it.
- **Exact relevant location:** equation (2) for the "selected completely at random" assumption,
  Lemma 1 for `p(y = 1 | x) = p(s = 1 | x) / c` with `c = p(s = 1 | y = 1)`, equation (3) for the
  unlabeled weight, equation (4) for estimating `p(y = 1)`.
- **What it supports:** the positive-unlabeled framing, in which a posted check-in is a positive
  and silence is unlabeled rather than negative.
- **What it does not support or important limitations:** this is the critical finding for this
  project. Its SCAR assumption says the chance that a true opportunity appears as a positive does
  not depend on the covariates, which here means it does not depend on the venue. That is exactly
  the claim Assumption 2 makes and exactly what the venue-dependence searches put in doubt.
  Adopting this formalism would assume away the question rather than answer it. It also needs a
  validation set of known positives to estimate `c`.
- **Where it is used in the report or code:** not yet used. Recorded as a candidate whose central
  assumption collides with the open question.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-106 MacKenzie et al. (2002)

- **Status:** LEAD
- **Full citation or dataset/software name:** MacKenzie, D.I., Nichols, J.D., Lachman, G.B.,
  Droege, S., Royle, J.A., Langtimm, C.A., "Estimating site occupancy rates when detection
  probabilities are less than one," Ecology 83(8):2248-2255, 2002.
- **Stable link, DOI, or version:** doi.org/10.1890/0012-9658(2002)083[2248:ESORWD]2.0.CO;2
- **Checked by and date:** not read. The publisher page returned HTTP 403 to Claude Code on
  2026-10-10. The model statement in this entry comes from the software documentation logged as
  `SRC-107`, not from the paper.
- **Exact relevant location:** not established.
- **What it supports:** nothing verified from the paper itself. It is the origin of the occupancy
  model, which is the one family found in this search built specifically for the case where a zero
  observation does not mean a zero truth.
- **What it does not support or important limitations:** unopened. Occupancy modelling also
  assumes the zero-detection site stays in the sample, whereas this project drops a venue with no
  check-ins from the display entirely, so the family does not transfer without modification.
- **Where it is used in the report or code:** not yet used.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-107 unmarked::occu documentation

- **Status:** CHECKED
- **Full citation or dataset/software name:** reference documentation for the `occu` function of
  the R package `unmarked`.
- **Stable link, DOI, or version:** `rdrr.io/cran/unmarked/man/occu.html`. The package version was
  not recorded and must be fixed before any computational use.
- **Checked by and date:** read by Claude Code on 2026-10-10. The owner has not read it.
- **Exact relevant location:** the model statement and the double-formula interface.
- **What it supports:** the occupancy model written as `z_i ~ Bernoulli(psi_i)` for occupancy and
  `y_ij | z_i ~ Bernoulli(z_i * p_ij)` for detection, with a logit link on both and a
  `~ detform ~ occform` double formula that places separate covariates on detection and on
  occupancy. That separation is what would let a venue term enter the posting probability rather
  than the crowd. The page cites MacKenzie et al. (2006), Royle and Dorazio (2008), and Kéry and
  Royle (2016).
- **What it does not support or important limitations:** software documentation is not a
  mathematical source, and no theorem may be cited from it. The model requires repeated visits to
  the same site within a period over which occupancy does not change, and one visit per site
  leaves occupancy and detection confounded. It requires detections independent across repeat
  visits given occupancy, which colocated friends violate. A covariate entering both levels is
  weakly identified. The package version is unrecorded.
- **Where it is used in the report or code:** not yet used. A third candidate formalism, and the
  only one in this search designed for unobserved true zeros.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-108 Bates, Mächler, Bolker, Walker (2015)

- **Status:** LEAD
- **Full citation or dataset/software name:** Bates, D., Mächler, M., Bolker, B., Walker, S.,
  "Fitting Linear Mixed-Effects Models Using lme4," Journal of Statistical Software 67(1):1-48,
  2015.
- **Stable link, DOI, or version:** doi.org/10.18637/jss.v067.i01
- **Checked by and date:** citation and abstract read by Claude Code on 2026-10-10. The article was
  not read.
- **Exact relevant location:** not established.
- **What it supports:** the software route to a crossed random effects fit, should the owner want
  one.
- **What it does not support or important limitations:** unread beyond the abstract. The paper
  covers linear mixed models, and a binary outcome needs the generalized case, which this entry
  does not establish is covered here.
- **Where it is used in the report or code:** not yet used.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-109 Baayen, Davidson, Bates (2008)

- **Status:** LEAD
- **Full citation or dataset/software name:** Baayen, R.H., Davidson, D.J., Bates, D.M.,
  "Mixed-effects modeling with crossed random effects for subjects and items," Journal of Memory
  and Language 59(4):390-412, 2008.
- **Stable link, DOI, or version:** ERIC record EJ818422
- **Checked by and date:** abstract and ERIC record read by Claude Code on 2026-10-10. The full
  text was not read.
- **Exact relevant location:** not established.
- **What it supports:** the crossed subjects-and-items design, which is structurally the same as
  this project's crossed persons-and-venues design.
- **What it does not support or important limitations:** unread. Its domain is psycholinguistics,
  and the transfer to a venue setting is this project's inference, not the paper's claim.
- **Where it is used in the report or code:** not yet used.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-110 Gelman and Hill (2007)

- **Status:** LEAD
- **Full citation or dataset/software name:** Gelman, A., Hill, J., *Data Analysis Using
  Regression and Multilevel/Hierarchical Models*, Cambridge University Press, 2007.
- **Stable link, DOI, or version:** the published table of contents at
  `sites.stat.columbia.edu/gelman/arm/contents.pdf`
- **Checked by and date:** the table of contents read by Claude Code on 2026-10-10. The book could
  not be opened.
- **Exact relevant location:** reported as section 13.5, "Non-nested models." The section number
  comes from the table of contents, and the contents of that section are unverified.
- **What it supports:** nothing verified. It is the standard textbook treatment of non-nested,
  meaning crossed, random effects.
- **What it does not support or important limitations:** cite no result from this book until
  someone opens it.
- **Where it is used in the report or code:** not yet used.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-111 Classical compound-distribution and choice-model citations, unverified

- **Status:** LEAD
- **Full citation or dataset/software name:** a group of foundational citations surfaced together
  and opened by nobody. The beta-binomial pair, Skellam (1948) and Williams (1975), is split out
  as `SRC-112`; the six below stay in this entry. Mosimann, J.E., "On the compound multinomial
  distribution, the multivariate beta-distribution, and correlations among proportions,"
  Biometrika 49:65-82, 1962, for the Dirichlet-multinomial. Mullahy, J., Journal of Econometrics
  33(3):341-365, 1986, for the hurdle model. Bradley, R.A., Terry, M.E., Biometrika 39:324-345,
  1952, Luce, R.D., *Individual Choice Behavior*, Wiley, 1959, and Plackett, R.L., "The analysis
  of permutations," Journal of the Royal Statistical Society Series C 24(2):193-202, 1975, for
  choice models.
- **Stable link, DOI, or version:** none verified.
- **Checked by and date:** none opened. All citation details come from search results, checked by
  Claude Code on 2026-10-10 only for internal consistency. The zero-inflated Poisson citation from
  the same group, Lambert (1992), is already logged separately as `SRC-020`.
- **Exact relevant location:** none established for any of them.
- **What it supports:** nothing yet. This entry exists so the citations are not lost and so nobody
  mistakes them for checked sources.
- **What it does not support or important limitations:** no page, volume or result from any of
  these may be cited. Several carry page ranges that came from search results rather than from the
  articles. Split this entry into separate IDs as each source is actually opened.
- **Where it is used in the report or code:** not used.
- **Related prompt log:** `AI/PROMPTS/2026-10-10-assumption-2-literature.md`

### SRC-112 Beta-binomial as individual heterogeneity in thinning

- **Status:** LEAD
- **Full citation or dataset/software name:** the beta-binomial distribution, originating with
  Skellam, J.G., Journal of the Royal Statistical Society Series B, 1948, and its overdispersion
  application from Williams, D.A., 1975. Mathematical form cross-checked on 2026-10-10 against
  modern secondary treatments rather than against either original paper.
- **Stable link, DOI, or version:** none verified for either original paper. Secondary
  confirmation drawn from standard reference treatments of the beta-binomial distribution found
  by search (Wikipedia's entry and several applied-statistics papers on fitting it), not from a
  single authoritative source.
- **Checked by and date:** neither original paper opened. The mathematical form was independently
  confirmed by Claude Code on 2026-10-10 via secondary sources: a Binomial(n, p) count where p
  itself is Beta(a, b)-distributed rather than fixed, giving a count distribution with more
  spread than a plain binomial and an intraclass correlation of 1/(1 + a + b). This is a
  confirmation of the concept's standard mathematical form, not a verification of either Skellam
  or Williams's own text, proofs, or original framing.
- **Exact relevant location:** none established in either original paper.
- **What it supports:** a direct fix for the N-mixture model's "one shared detection probability"
  limitation (see `SRC-009`). Writing `y_v | N_v ~ Beta-Binomial(N_v, a, b)` instead of
  `Binomial(N_v, p)` is mathematically equivalent to letting each of the `N_v` people present have
  their own posting probability drawn from a Beta distribution, without needing to track which
  specific people they are. Raised and worked through in this session while discussing why the
  plain N-mixture model cannot represent per-adopter heterogeneity.
- **What it does not support or important limitations:** does not by itself add venue-dependence;
  the Beta distribution's own parameters would still need to vary by venue to capture that, which
  is a separate, undocumented choice. Confirmed only against secondary sources, so no claim here
  may be attributed to Skellam or Williams's actual text until one of the two originals is opened.
- **Where it is used in the report or code:** not yet used. Candidate extension to the N-mixture
  formalism for Assumption 2.
- **Related prompt log:** this session, 2026-10-10, continuing
  `AI/PROMPTS/2026-10-10-assumption-2-literature.md`.

### Discarded as not measurable in this project's setting

Roughly thirty sources from the same search were not logged individually, since none of them
survive the filter above: they depend on audio or sound-level data (the Lombard-effect and
music-tempo literature, the Axelsson et al. soundscape-vibrancy framework, Gueguen et al.,
Daelemans et al., Milliman, Caldwell and Hibbert), survey or self-report data this project does
not collect (the collective-effervescence meta-review, Paez et al., most of the crowding
literature beyond SRC-052 through SRC-054), physical-venue or street-level observation data
(Mehta's several papers, Montgomery, stadium-atmosphere research, Whyte, Grazian), or
qualitative fieldwork that cannot be reduced to this project's check-in schema (Oldenburg,
Blokland and Nast, Johnston). De Nadai et al. (2016), on urban vitality from mobile-phone data,
is the closest methodological relative of this project among the discarded set, but its actual
inputs, census and land-registry data, are still outside scope. Full detail on every discarded
source, including citation status, was deleted on 2026-10-10 under DEC-008. It survives only in
git history, at commit `23a4629`, and is no longer part of the working tree.
