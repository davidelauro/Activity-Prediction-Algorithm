# Literature review results

Run 2026-10-09 in a fresh chat, Claude Opus, using the ten prompts in
`drafts/search-prompts.md`. Pulled from the Claude Docs page at
`https://claude.ai/code/artifact/9ca3fe50-6e2a-46ac-bcdc-9d66be95bbc7`.

Every source below is labelled by how closely it was checked. After a second pass, 16 sources
count as fully read; the rest stay leads, graded by how much of each was actually seen.

| Label | Meaning |
|---|---|
| Full text | The whole paper was opened and read, sometimes only a preprint or working-paper version |
| Abstract + record | Only the abstract and a publisher/index/repository record; claims about content come from the abstract alone |
| Secondary | Seen only as a citation inside another source, or recalled; venue, pages, or DOI unconfirmed |

For four papers (Royle 2004, Chao 1987, Holzmann et al. 2006, Crandall et al. 2010) the fetch
tool returned the complete text verbatim. For the other full-text reads, the tool read the whole
document and answered detailed questions put to it, one step removed from the raw text. A DOI is
given only where a record displayed it; an inferred-but-unconfirmed DOI is listed in the
"Unconfirmed details" section instead of printed as fact. No source was added to fill a gap;
where the literature does not answer a question, that is stated directly.

## 1. Population size from a sparse sample

Two main families: closed-population capture-recapture (needs individually identified
detections) and N-mixture models (needs only repeated counts). Both rest on a detection
assumption that matters more than the model choice: with constant, independent detection
probability p, abundance is estimable; once p varies across individuals, abundance can become
non-identifiable, and sparse counts make this worse.

| Source | Venue / identifier | Note | Checked |
|---|---|---|---|
| Royle, J.A. (2004). N-mixture models for estimating population size from spatially replicated counts | Biometrics 60(1):108-115, doi:10.1111/j.0006-341X.2004.00142.x | Counts at a site are i.i.d. Binomial(Nᵢ, p); site abundances Poisson or negative binomial. Choice of mixing distribution can swing results substantially (hermit-thrush mean abundance 0.61 under Poisson vs 7.06 under negative binomial). No individual heterogeneity in p. | Full text |
| Barker, Schofield, Link, Sauer (2018). On the reliability of N-mixture models for count data | Biometrics 74(1):369-377, doi:10.1111/biom.12734 | Uncontrolled variation in p is fatal; even with constant p after covariates, alternative models give practically indistinguishable data when sparse. Counts alone support only relative abundance. | Abstract + record |
| Link, Schofield, Barker, Sauer (2018). On the robustness of N-mixture models | Ecology 99(7):1547-1551, doi:10.1002/ecy.2362 | Three small violations (double counting, unmodelled change in N or p over time) produce large bias that goodness-of-fit tests are unlikely to catch. | Abstract + record |
| Pledger, S. (2000). Unified maximum likelihood estimates for closed capture-recapture models using mixtures | Biometrics 56:434-442 | Individuals fall into a finite number of latent groups with different capture probabilities; a two-group split often removes most heterogeneity bias. | Secondary |
| Chao, A. (1987). Estimating the population size for capture-recapture data with unequal catchability | Biometrics 43:783-791 | N-hat = S + f1^2/(2f2), a lower bound derived via Jensen's inequality. Needs many occasions (5+) and small capture probabilities; author says it fails when average capture probability is relatively large. | Full text |
| Link, W.A. (2003). Nonidentifiability of population size from capture-recapture data with heterogeneous detection probabilities | Biometrics 59:1123-1130 | Under individual heterogeneity, different mixing distributions fit equally well yet imply different N. | Secondary |
| Holzmann, Munk, Zucchini (2006). On identifiability in capture-recapture models | Biometrics 62:934-939 | Answers Link (2003): within a fixed family, N is identifiable, with specific conditions per family (finite mixtures, beta mixtures, uniform). Identifiability across families is not covered. | Full text |

Design note: check-ins carry user IDs, so this project has individual detection histories
(capture-recapture data), not only counts, putting it on the better-identified side of the
Barker et al. critique, but only for the user population, not for non-users at the venue.

## 2. Correlated detection within a known social tie

Models that relax independent detection exist almost entirely in wildlife ecology, where the
"tie" is a mated pair or an animal group. The closest match (known ties, shared detection
outcome) is the pair-bond extension of Cormack-Jolly-Seber models; for abundance, the
beta-binomial N-mixture model gives a single correlation parameter. No paper was found doing this
for human friends or travel companions in check-in data specifically; that is a gap, not a
finding.

| Source | Venue / identifier | Note | Checked |
|---|---|---|---|
| Martin, Royle, MacKenzie, Edwards, Kery, Gardner (2011). Accounting for non-independent detection when estimating abundance of organisms with a Bayesian approach | Methods in Ecology and Evolution 2:595-601, doi:10.1111/j.2041-210X.2011.00113.x | Replaces the binomial detection step with a beta-binomial, estimating abundance, p, and a correlation parameter together. Fitting a plain binomial to correlated data overestimated abundance even at moderate correlation. Ties not known in advance; correlation is a site-level parameter. | Abstract + record |
| Draghici, Bonner, Challenger (2021). Understanding the impact of correlation within pair-bonds on Cormack-Jolly-Seber models | Ecology and Evolution, PMC8207451 | Known pairs have correlated survival and recapture outcomes; ignoring correlation gives too-small standard errors. Closest structural match to known-tie dependence. | Abstract + record (full text rate-limited) |
| Clement, Converse, Royle (2017). Accounting for imperfect detection of groups and individuals when estimating abundance | Ecology and Evolution 7, PMC5606903 | Standard approach assumes everyone in a detected group is seen; this model lets groups be missed and group size be under-counted but never over-counted. | Abstract + record (full text rate-limited) |
| Guillera-Arroita, Ridout, Morgan, Linkie (2012). Models for species-detection data... in the presence of abundance-induced heterogeneity and clustering in the detection process | Methods in Ecology and Evolution 3(2), doi:10.1111/j.2041-210X.2011.00159.x | Detections cluster rather than occurring independently; unmodelled clustering biases abundance. | Abstract + record |

Crandall et al. (2010, see question 10) also contains a generative model where each pair of
friends visits a place jointly with probability beta and independently otherwise, a usable
template for a shared-detection model of known ties.

## 3. The near-zero data regime

Three literatures solve different problems: empirical Bayes shrinkage stabilises a rate when the
count behind it is tiny; zero-inflated models separate "structurally zero" units from units that
happened to record zero; cold-start methods borrow from side information when a unit has no
history at all. For a venue with zero or one check-in, Poisson-gamma shrinkage (Clayton and
Kaldor) is the most direct template.

| Source | Venue / identifier | Note | Checked |
|---|---|---|---|
| Clayton, D., Kaldor, J. (1987). Empirical Bayes estimates of age-standardized relative risks for use in disease mapping | Biometrics 43:671-681 | Observed count is Poisson around expected x relative risk; risks share a gamma prior estimated from all areas, giving smoothed estimate (O + v)/(E + a). Areas with tiny counts pulled hardest toward the overall mean. | Secondary (consistent across package docs) |
| Lambert, D. (1992). Zero-inflated Poisson regression, with an application to defects in manufacturing | Technometrics 34(1):1-14 | Each count is zero with probability p and Poisson(lambda) otherwise. On 675 circuit-board areas with 81% zeros, plain Poisson under-predicted zeros; negative binomial fit better but still under-predicted versus ZIP. | Full text |
| Schein, Popescul, Ungar, Pennock (2002). Methods and metrics for cold-start recommendations | SIGIR 2002, pp. 253-260, doi:10.1145/564376.564421 | Defines cold-start as recommending items nobody has rated yet; combines content and collaborative data, proposes evaluation methods for that case. | Abstract + record (no reachable full text) |

The Royle (2004) N-mixture model already supports a zero-inflated Poisson mixing distribution
(the `pcount` function in R's `unmarked` package offers P, NB, and ZIP), so shrinkage, zero
inflation, and imperfect detection can sit in one hierarchical model rather than three separate
steps. Efron and Morris's Stein-type shrinkage work is the classic general reference, not located
or checked this session.

## 4. A hard lower bound on the estimate

The cleanest way to respect "the estimate can never fall below the raw count" is structural:
estimate the unseen remainder U = N minus n, non-negative by definition, and report n + U-hat.
Chao-type estimators already have this form; in Royle's (2004) N-mixture likelihood the sum over
each site's N starts at the largest count seen there, so the bound holds automatically. Feldman
and Cousins give the closest treatment of intervals for counts with a known floor.

| Source | Venue / identifier | Note | Checked |
|---|---|---|---|
| Chao, A. (1987), see question 1 | Biometrics 43:783-791 | N-hat = S + f1^2/(2f2): distinct individuals seen, plus a non-negative estimate of those never seen. Paper says to read it only as a lower bound if counts of individuals seen 3+ times carry real information. | Full text |
| Feldman, G.J., Cousins, R.D. (1998). Unified approach to the classical statistical analysis of small signals | Physical Review D 57(7):3873-3889, doi:10.1103/PhysRevD.57.3873 | Count n = signal (mean mu >= 0) + known background b. Ranks by likelihood relative to max(0, n-b), so intervals never enter the impossible region. Recommends also reporting sensitivity (average upper limit under background only). | Full text (arXiv version) |
| Rivest, L.-P. (2011). A lower bound model for multiple record systems estimation with heterogeneous catchability | International Journal of Biostatistics, doi:10.2202/1557-4679.1283 | Generalises Chao's lower bound to models with dependence between lists. | Abstract only; author/title from memory, Crossref lookup rate-limited |

No specific source was checked for truncated count distributions themselves (e.g. a Poisson
truncated below at n); the modelling move is standard but still open as a citation.

## 5. Simulating a thinned observation process

The standard design is two-stage: simulate the true process (counts or a point process of
arrivals), then keep each event with a detection probability to get the observed subset. In
ecology this "truth first, then imperfect detection" simulation is the normal way N-mixture and
species-distribution estimators are tested.

| Source | Venue / identifier | Note | Checked |
|---|---|---|---|
| Lewis, P.A.W., Shedler, G.S. (1979). Simulation of nonhomogeneous Poisson processes by thinning | Naval Research Logistics Quarterly 26(3):403-413, doi:10.1002/nav.3800260304 | The thinning algorithm: generate a dominating homogeneous Poisson process, delete points with controlled probability. | Abstract + record (no reachable full text) |
| Dorazio, R.M. (2014). Accounting for imperfect detection and survey bias in statistical analysis of presence-only data | Global Ecology and Biogeography 23(12):1472-1484, doi:10.1111/geb.12216 | Treats observed presence records as a thinned version of a true spatial point process; validated with simulation and mathematical proof. | Abstract + record |
| Lahoz-Monfort, Guillera-Arroita, Wintle (2014). Imperfect detection impacts the performance of species distribution models | Global Ecology and Biogeography, doi:10.1111/geb.12138 | Simulates true occupancy, then imperfect detection, scores models against known truth; a close template for this project's validation design. | Abstract + record |
| Morris, White, Crowther (2019). Using simulation studies to evaluate statistical methods | Statistics in Medicine 38(11):2074-2102, doi:10.1002/sim.8086 | ADEMP framework (aims, data-generating mechanisms, estimands, methods, performance measures). About 1,900 repetitions give 0.5% Monte Carlo SE on 95% coverage. | Full text (arXiv v3) |

The `unmarked` package's own examples (`pcount`, `gpcount`) simulate latent abundance with
`rpois` then observed counts with `rbinom`, exactly this two-stage pattern in code. To
stress-test question 2, replace the independent binomial step with a correlated one (e.g.
beta-binomial, as in Martin et al. 2011).

## 6. Discretizing a continuous estimate for display

Two literatures bear on this: cartography on how class-break choice changes what map readers
conclude, and risk communication on how labelled categories are interpreted and acted on. Both
find boundaries and labels change perception and decisions, and that people read verbal
categories less extremely than intended unless numbers are shown alongside.

| Source | Venue / identifier | Note | Checked |
|---|---|---|---|
| Brewer, C.A., Pickle, L. (2002). Evaluation of methods for classifying epidemiological data on choropleth maps in series | Annals of the Association of American Geographers 92(4):662-681 | 56 subjects, 7 classing methods. Quantile and minimum-boundary-error classes most accurate; natural breaks (Jenks) scored under 70% as accurate. Matched legends raised comparison accuracy ~28%. | Abstract + record |
| Peters, Dieckmann, Vastfjall, Mertz, Slovic (2009). Bringing meaning to numbers: the impact of evaluative categories on decisions | Journal of Experimental Psychology: Applied | Adding visual boundary lines and good/bad labels changed health judgments across four experiments, most for less numerate people. | Abstract + record |
| Budescu, Broomell, Por (2009). Improving communication of uncertainty in the reports of the IPCC | Psychological Science 20(3):299-308, doi:10.1111/j.1467-9280.2009.02284.x | Readers' numeric interpretations of IPCC probability categories deviated from official ranges even with guidelines available. | Abstract + record |
| Budescu, Por, Broomell, Smithson (2014). The interpretation of IPCC probabilistic statements around the world | Nature Climate Change 4(6):508-512 | 25 samples, 24 countries, 17 languages: people read categories as closer to 50% than intended; verbal + numeric format improved agreement. | Abstract + record |

The classic Budescu and Wallsten (1985) work on interpersonal variation in reading probability
phrases is cited throughout these papers but was not opened.

## 7. Asymmetric loss for an ordinal prediction

Quantile (asymmetric piecewise-linear) loss is the standard tool, with a formal reason: Gneiting
(2011) shows a scoring function is consistent for a quantile if and only if it is generalized
piecewise linear, so under asymmetric-linear loss the optimal report is a quantile of the
predictive distribution, not the mean. Extending this to ordered categories (not a quoted
result, derived during this search): if under-calling by one category costs a and over-calling
costs b, the expected-cost-minimising category is the one containing the a/(a+b) quantile of the
predictive distribution over categories.

| Source | Venue / identifier | Note | Checked |
|---|---|---|---|
| Gneiting, T. (2011). Making and evaluating point forecasts | JASA, doi:10.1198/jasa.2011.r10138 | Theorem 3.3: a score is consistent for the alpha-quantile iff S(x,y) = (1(x>=y) - alpha)(g(x) - g(y)), g nondecreasing. Plain asymmetric piecewise-linear is g(x)=x. Does not treat ordinal outcomes or derive alpha from a cost ratio; both are this search's own extension. | Full text (arXiv v2, 2010) |
| Zellner, A. (1986). Bayesian estimation and prediction using asymmetric loss functions | JASA 81:446-451 | LINEX loss b[exp(a*Delta) - a*Delta - 1], linear on one side and exponential on the other; optimal predictor is biased, least-squares predictor is inadmissible. | Secondary |
| Sakai, T. (2021). Evaluating evaluation measures for ordinal classification and ordinal quantification | ACL-IJCNLP 2021, pp. 2759-2769 | Compares nine ordinal-classification measures, recommends linear weighted kappa. None of the nine treats over- and under-prediction differently, so standard ordinal metrics will not reflect this project's asymmetry. | Full text |
| Kotsiantis, S.B., Pintelas, P.E. (2004). A cost sensitive technique for ordinal classification problems | Springer LNCS chapter, doi:10.1007/978-3-540-24674-9_24 | Treats ordinal prediction with a fixed, unequal misclassification-cost matrix; the general form if costs are not linear in category distance. | Abstract only; authors/series from memory |

Alternatives in short: expectile (asymmetric squared) loss if large misses should cost
quadratically; LINEX if one side should explode; a full cost matrix if costs are arbitrary per
category pair. Koenker and Bassett (1978, Econometrica) is the standard origin for quantile
regression, not opened.

## 8. Public predictions that influence the behaviour they predict

**Verdict on the El Farol guess: it holds, but only for half the setting.** El Farol agents all
prefer an uncrowded bar, so it models avoiders and the self-defeating forecast; it does not model
people drawn to what looks busy. The mixed case, some moving toward a predicted favourite and
others away, has a direct source in Simon (1954) on bandwagon and underdog effects of published
election forecasts, and Leibenstein (1950) on bandwagon versus snob demand. Keep El Farol for the
avoider side, paired with these for the seeker side. A further limit: in the full texts of
Zambrano and Challet et al., the only public information is past attendance, never a published
forecast, so the "forecast changes the outcome" part of this project's setting is closer to
performative prediction and traffic-information studies than to El Farol itself.

| Source | Venue / identifier | Note | Checked |
|---|---|---|---|
| Zambrano, E. (2004). The interplay between analytics and computation in the study of congestion externalities: the case of the El Farol problem | Journal of Public Economic Theory 6(2):375-395, doi:10.1111/j.1467-9779.2004.00170.x | Formalises El Farol: 100 players, bar enjoyable only below 60 attendees, past attendance public, everyone dislikes crowds. Frames as a congestion externality (citing Rosenthal's congestion games without formal analysis). No pure-strategy equilibrium; median attendance converges to 60 in every mixed equilibrium. The sourced link from El Farol to congestion games. | Full text (postprint) |
| Challet, Marsili, Ottino (2004). Shedding light on El Farol | Physica A, doi:10.1016/j.physa.2003.06.003 | With random information, El Farol is "essentially equivalent" to a minority game with biased strategies and tunable resource level, exactly so when bias is zero. Attendance settling at the comfort level is trivial; fluctuation size is the interesting quantity. Everyone shares one comfort level. | Full text (arXiv) |
| Simon, H.A. (1954). Bandwagon and underdog effects and the possibility of election predictions | Public Opinion Quarterly 18(3):245-253 | Defines the two opposite reactions to a published forecast; reportedly (not re-checked) also shows a prediction can be chosen to stay correct after publication when reactions are known and continuous. | Secondary (consistent in 4 sources) |
| Leibenstein, H. (1950). Bandwagon, snob, and Veblen effects in the theory of consumers' demand | Quarterly Journal of Economics 64(2):183-207 | Demand rising with others' consumption (bandwagon) and falling with it (snob) in one framework, the consumer-side analogue of seekers versus avoiders. | Secondary |
| Ben-Akiva, de Palma, Kaysi (1991). Dynamic network models and driver information systems | Transportation Research Part A 25A(5):251-266 | Real-time congestion information can backfire through overreaction (congestion shifts to the recommended route) and concentration. Later simulations put the tipping point near 20% of drivers informed. | Abstract + record |
| Perdomo, Zrnic, Mendler-Dunner, Hardt (2020). Performative prediction | ICML 2020, PMLR 119:7599-7609 | Predictions shift the distribution they predict. Performative stability = optimal for the induced distribution. Retraining converges to a stable point if population sensitivity is below a threshold set by loss convexity/smoothness. Reactions enter only as one aggregate distribution map; heterogeneous or opposite reactions not analysed. | Full text (arXiv) |

The ~20% figure on driver information is from a secondary summary of Mahmassani and colleagues'
1991 simulations, not a paper opened directly.

**Removed 2026-10-09 as not peer-reviewed:** Arthur (1994), the original El Farol paper, which
appeared in the non-refereed AER Papers and Proceedings issue (Zambrano 2004 and Challet et al.
2004 now carry the El Farol claims instead); Wolpert and Tumer (1999), an arXiv technical report.

## 9. Spatial substitution between nearby destinations

Two strands fit the "close substitutes" case: competing-destinations models change the gravity
model so a destination's draw depends on the alternatives around it, and the same structure has
been used for migration; recreation-demand sorting models add the piece the classic models lack,
crowding at a site is itself an outcome of everyone's choices, so congestion at one site pushes
people to nearby alternatives.

| Source | Venue / identifier | Note | Checked |
|---|---|---|---|
| Fotheringham, A.S. (1983). A new set of spatial-interaction models: the theory of competing destinations | Environment and Planning A 15(1):15-36 | Standard gravity models are misspecified because they ignore how destinations sit relative to one another; adds a competition term, removing a spurious spatial pattern in distance-decay estimates. | Abstract + record |
| Ewing, G. (1986). Spatial pattern in distance-deterrence parameters and Fotheringham's theory of competing destinations | Environment and Planning A 18(4):547-551, doi:10.1068/a180547 | Direct critique: attributes Fotheringham's spatial pattern to a modal-share artefact in the airline data. | Abstract + record |
| Pellegrini, Fotheringham (1999). Intermetropolitan migration and hierarchical destination choice | Environment and Planning A 31:1093-1118 | Applies competing-destinations choice models to individual migration data; confirms migration models share the structure. | Abstract + record |
| Timmins, Murdock (2007). A revealed preference approach to the measurement of congestion in travel cost models | Journal of Environmental Economics and Management 53:230-249 | Site choice among 569 Wisconsin fishing sites. Congestion = expected share of anglers choosing a site, in a rational-expectations sorting equilibrium, generically unique. Instrumented since endogenous (without instrument, congestion coefficient is positive; with it, negative). Removing one lake costs more per trip once re-sorting congestion is accounted for. **Closest match to venue-to-venue substitution under crowding.** | Full text (2006 working-paper version) |
| Simini, Gonzalez, Maritan, Barabasi (2012). A universal model for mobility and migration patterns | Nature 484:96-100, doi:10.1038/nature10856 | Radiation model, parameter-free, intervening-opportunities structure. Tested on US county commuting, migration, freight, phone-traced trips. No crowding or capacity term; not tested at venue scale. | Full text (arXiv) |

Huff's (1964) probabilistic store-choice model is the usual retail starting point for choice
among nearby outlets; not opened this session.

## 10. Defining group co-presence from check-in data

Prior work treats co-presence as "same spatial cell within a time window" and tests a range of
windows rather than fixing one; the shortest window found tested is one day, coarser than a
single outing. On tie direction: Cho et al. (2011) state their rule explicitly, Brightkite
friendships are directed and only reciprocated links are kept, phone-data ties require 5+ calls
each direction. Pham et al. (2013) define co-occurrence with a time window but never report the
value used. A principled minute-scale "same outing" window, and a direct comparison of mutual
versus one-way ties, are both gaps.

| Source | Venue / identifier | Note | Checked |
|---|---|---|---|
| Crandall, Backstrom, Cosley, Suri, Huttenlocher, Kleinberg (2010). Inferring social ties from geographic coincidences | PNAS 107(52):22436-22441, doi:10.1073/pnas.1006155107 | Co-occurrence = same s x s cell within t days. Windows tested: 1, 7, 14, 28 days, 1 year; cells 0.001 deg (~80m) to 10 deg. Tie probability rises sharply as t shrinks and distinct co-occurrence cells k grow. Does not say whether one-way contacts were symmetrised. | Full text |
| Cho, Myers, Leskovec (2011). Friendship and mobility: user movement in location-based social networks | KDD 2011, pp. 1082-1090, doi:10.1145/2020408.2020579 | Gowalla friendships undirected; Brightkite directed with only bidirectional edges kept; phone "friends" called 5+ times each way. No co-location time window defined (uses same-day check-ins, power-law decay). Social ties explain ~10-30% of movement, periodic behaviour 50-70%. | Full text (author PDF) |
| Pham, Shahabi, Liu (2013). EBM: an entropy-based model to infer social strength from spatiotemporal data | SIGMOD 2013, pp. 265-276 | Co-occurrence = check-ins at same place within window tau, described as application-dependent, no value reported. Co-occurrences down-weighted by place entropy (busy places count less). Ground truth is Gowalla's undirected friendship graph. **Directly relevant: busy venues are where false "groups" are most likely.** | Full text |
| Eagle, Pentland, Lazer (2009). Inferring friendship network structure by using mobile phone data | PNAS 106:15274-15278, doi:10.1073/pnas.0900282106 | Infers friendship from dense phone-based co-presence traces, the high-resolution counterpart to sparse check-ins. | Secondary |

Crandall et al. also flag a bias relevant to venue data: large public events generate many
co-occurrences between strangers, diluting the share of co-occurrences that reflect a real tie.

## Unconfirmed details to check before citing

Every item below is cited above but has at least one detail not seen on a primary record:
Pledger 2000 (DOI), Chao 1987 (issue, DOI), Link 2003 (DOI), Clayton and Kaldor 1987 (DOI, seen
only in software docs), Lambert 1992 (DOI, pages inferred), Draghici et al. 2021 (volume, pages,
DOI), Clement et al. 2017 (pages, DOI), Rivest 2011 (author and title), Dorazio 2014 (volume,
pages from a citing paper), Lahoz-Monfort et al. 2014 (volume, pages), Brewer and Pickle 2002
(DOI), Peters et al. 2009 (volume, pages, DOI), Gneiting 2011 (JASA volume/pages, arXiv preprint
read instead), Zellner 1986 (not opened, details from citing papers), Kotsiantis and Pintelas
2004 (authors, book series), Challet et al. 2004 (volume, pages), Simon 1954 and Leibenstein 1950
(citations only, Simon's content summary from memory), Fotheringham 1983, Timmins and Murdock
2007, Pham et al. 2013 (DOI), Timmins and Murdock 2007 (published version not read, numbers from
the 2006 working paper), Pellegrini and Fotheringham 1999 (volume, pages from a citing list).

**Full texts attempted and not reached:** Barker et al. 2018 (publisher blocked), Draghici et al.
2021 and Clement et al. 2017 (Europe PMC rate-limited, PubMed Central behind a bot check),
Budescu et al. 2009 (no repository copy available), Schein et al. 2002 and Lewis and Shedler 1979
(no open full text found). Wiley-hosted papers (Martin et al. 2011, Link et al. 2018, Dorazio
2014, Lahoz-Monfort et al. 2014) were not attempted after the first Wiley block.

**Removed 2026-10-09 as not peer-reviewed:** Arthur (1994, El Farol, non-refereed AER
Papers and Proceedings), Wolpert and Tumer (1999, arXiv technical report), Challenger (2010) and
Draghici (PhD theses, the peer-reviewed Draghici, Bonner and Challenger 2021 stays), Zellner's
1986 working paper (the JASA paper stays), Link's 2006 reply to Holzmann et al. (a rejoinder),
Marchand and Strawderman (2004, 2006, edited lecture-note volumes, review process unconfirmed).
Peer-review status of the remaining sources is judged from their venues, not checked paper by
paper.

**Named but not opened at all, pointers only:** Otis et al. (1978), Efron and Morris, Budescu and
Wallsten (1985), Koenker and Bassett (1978), Challet and Zhang (1997), Mahmassani and colleagues
(1991), Huff (1964).
