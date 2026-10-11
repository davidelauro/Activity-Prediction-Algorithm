# AI session: results of the seven question-relocation searches

- **Date:** 2026-10-11
- **AI tool and interface:** Claude Code in the Claude desktop app
- **Visible model name, if shown:** Opus 5
- **Branch:** problem/adoption-threshold
- **Purpose:** run the seven `drafts/question-prompt-*.md` files drafted earlier the same day in
  `dbd829a`, and report whether any candidate question is better supported by the setting and the
  literature than the current adoption-threshold question is.
- **Files or sources provided to the AI:** `AGENTS.md`, `AI/PROJECT.md`, `AI/STATUS.md`,
  `AI/DECISIONS.md`, `AI/SOURCES.md`, `drafts/problem-statement-v2.md`, and the seven prompts.

## Initial prompt

> run prompts how ever it's best

## Substantive follow-up prompts

None. The owner left the choice of how to run them to Claude Code.

## What the AI contributed

Claude Code ran all seven prompts as background search agents in parallel, one per prompt, rather
than the three-prompt first wave it had suggested earlier in the session. The reason: the prompts
exist to compare support across candidates, so a missing candidate biases the comparison. The
owner had deleted none of the seven.

Each agent was briefed to read sources directly, to edit and create no file, to mark a source
`CHECKED` only after reading the relevant full text, to fabricate no citation or figure, to
recommend no research question or framework, and to report a negative plainly. Claude Code added
four structural facts to every brief, each following from `drafts/problem-statement-v2.md` rather
than from the prompts: that the label is a tercile rank off tonight's own occupancy distribution,
so errors couple across venues; that a venue with no check-in vanishes rather than showing a zero;
that posting probability depends on adopter and venue with no mechanism specified under `DEC-012`;
and that clustered adoption is a candidate, not a chosen extension. Per-agent additions are
recorded in the chat transcript and summarised here under each result.

### Verdicts, as reported

- **Identifiability.** Equally supported overall, better on the existence half only.
- **Coverage as detection.** Better supported than the joint 80/80 question, and weaker than the
  prompt's own working hypothesis assumed.
- **Ranking recovery.** Better supported on the decision-theoretic axis only. The censoring half
  has no support at all.
- **Censored boundaries.** Better supported, but a sub-problem of the current question rather
  than a replacement for it.
- **Clustered reach.** Negative. The two-mode step does not exist in the literature.
- **Display design.** Negative. The behavioural half needs human subjects this project has no
  instrument for.
- **Question forms.** Four of ten catalogued forms are not covered by the current question.

### Findings that bear on the problem

- The match rate is a named object twice over. Computed over displayed venues it is the marginal
  FDR of Gu and Koenker (2023), Section 3.3. Computed over all venues it is one minus the
  normalized Hamming loss of Chen, Gao and Zhang (2022), whose equation (14) gives the step from
  a Hamming bound to exact recovery. The random denominator recorded as a defect under `DEC-010`
  is therefore a quantity with an established name.
- The optimal rule for a 0/1 loss around a percentile cut point is published, not open. Lin,
  Louis, Paddock and Ridgeway (2006), Theorem 1, and Gu and Koenker, Section 3.1, independently
  give the same rule: rank the posterior probability that a unit lies above the cut. Ginestet,
  Best and Richardson (2012), Proposition 1 and Corollary 1, give the real-valued-threshold
  analogue and state explicitly that the rank-percentile case belongs to Lin et al. This is
  recorded as a literature fact. `AGENTS.md` reserves the choice of model and framework to the
  owner, and no agent was permitted to recommend one.
- Identifiability and answerability come apart. Farcomeni and Tardella (2012) prove full
  identifiability in Theorem 3.1, then show in Example 3.1 that the identified alternatives are
  distinguished only 41 and 76 percent of the time, with a sufficient statistic of lower
  dimension than the identified parameter. Their equation (3.1) also shows that conditioning on
  units observed at least once destroys identifiability of the hidden mass.
- A threat to relative recovery. Fithian, Elith, Hastie and Keith (2015), Sections 1.3 and 1.4,
  recover relative intensity under thinning only when the thinning covariates differ from the
  intensity covariates. `DEC-012` makes posting probability depend on venue identity while
  occupancy is indexed by venue, so the two margins share a covariate. Hastie and Fithian (2013)
  reads the other way, that relative position is the identifiable half. The two are the same
  research line and the tension is unresolved.
- A closed form for the probability of a zero under within-cluster dependence exists.
  Guillera-Arroita, Morgan, Ridout and Linkie (2011), equation (3.4), page 308, gives it as a
  Markov-modulated Poisson process in matrix form, with unequal cluster sizes handled through a
  per-site surveyed length. This is a new source and is a different article from `SRC-018`.
- No joint guarantee exists. Nothing found bounds the probability that every one of m clusters
  yields at least one positive under heterogeneous detection and within-cluster dependence
  together. Every aggregation found multiplies independent per-cluster terms. The named route is
  Chen-Stein; Arratia, Goldstein and Gordon (1990) is a dead end for it, and Barbour, Holst and
  Janson (1992) and Holst (1986) are unopened.
- The self-selection question has a formalism. Meng (2018) asks what the effective sample size of
  a self-selected sample is, as a function of the correlation between the recording indicator and
  the value recorded. The question-forms agent reports that this form needs none of the three
  unsourced inputs to pose. `LEAD`, abstract only.
- The current question already exists in two literatures the record does not hold, as the minimum
  penetration rate needed for an accuracy target. In the transport version the penetration rate is
  itself often unknown and estimated jointly, which bears on `PRF-001`.
- Nobody defines an estimand by the empirical quantiles of the realized finite vector. Three
  agents report this independently. Gu and Koenker use a quantile of the prior, and Adams and
  Paddock estimate an empirical percentile without an identifiability statement.
- Three agents reached the health-care provider-profiling literature from three directions, which
  is the convergence signal the question-forms prompt was told to flag.
- No sample-complexity condition exists for recovering a quantile partition from one noisy count
  per item without adaptive allocation. Every sharp result found needs pairwise comparisons or
  lets the procedure choose what to observe next.
- `SRC-068`'s Fano form is vacuous at three classes. Rearranged, the bound goes negative once the
  mutual information reaches log(3/2).
- The reach framing's motivation fails on its own terms. The prompt claimed a reach question would
  be answerable from structure alone. The agent reports it needs the joint law linking the
  friendship graph to venue assignment, so it exchanges an unmeasured clustering coefficient for
  an unmeasured group-to-venue assignment that has less evidence behind it.

### Corrections to existing records

- `AI/STATUS.md` states that only `SRC-104` and `SRC-107` model a mechanism by which a true zero
  goes unobserved, and that both keep the unit in the sample. The second half is confirmed from
  the sources. The first half is now wrong: Hwang, Stoklosa and Chen (2022), equation (4), is a
  zero-truncated occupancy likelihood that removes the unit.
- `SRC-106` is promotable to `CHECKED`. It is logged `LEAD` as publisher-blocked, and a free copy
  of MacKenzie et al. (2002) was read at the likelihood construction, page 2250.
- `SRC-136` is promotable to `CHECKED`. The full accepted manuscript of Hines et al. (2010) was
  read. Caveat for transfer: its dependence is a first-order Markov chain along an ordered
  sequence of sub-units, so it is not exchangeable, while a company of friends inside a venue has
  no such order.
- `SRC-134` is two papers, not one: Cameron and Baldock (1998a), Preventive Veterinary Medicine
  34, 1-17, and (1998b), same volume, 19-30. Both remain unopened. The Cameron and Baldock line
  treats the probability of a zero under uncertain test sensitivity, not under within-cluster
  dependence.
- `SRC-015`'s page range should be 934-936 rather than 934-939, per Crossref and Farcomeni and
  Tardella's reference list. `SRC-014`'s metadata is confirmed and it remains unread in full.
- `SRC-029`'s citation appears incomplete, with a sixth author Hibbard and the pinpoint JEP:
  Applied 15(3):213-227. Verified from secondary listings only, so it stays `LEAD`.
- Two `AI/STATUS.md` claims were confirmed by searching rather than assumed: no source reports an
  assortativity coefficient, intraclass correlation, or modularity value for an adopter set on a
  social graph, and no source studies a location-based venue app's adoption clustering. One
  qualification: Sziklai and Lengyel (2022) report Newman assortativity on adopter networks, for
  centrality measures rather than for adopter status.

## My decision

- **Outcome:** still under review
- **What I decided or changed:** nothing. `DEC-007` stands, the research question is unchanged,
  and `AI/PROJECT.md`'s "Chosen extension" slot stays open. No source record was written in this
  commit, because the owner has not yet decided which candidates survive and therefore which of
  roughly sixty reported sources belong in `AI/SOURCES.md`.

## Verification

- `SRC-132` failed again and stays `LEAD`, abstract only. Eight access routes were tried: the
  publisher landing page and PDF endpoint, the society page, ResearchGate, OpenAlex, Semantic
  Scholar, PubMed, the browser pane against a Cloudflare interstitial, and a search for an open
  citing paper restating the formula. OpenAlex reports the work closed with no repository copy.
  The complete abstract was recovered from the Crossref record, and adds one detail the entry
  lacks: the approximation can be rearranged to predict incidence at the lower scale from data at
  the higher scale. No equation, table or figure from that paper may be cited.
- Two status conflicts between agents were resolved in favour of the agent that read the text.
  Lin et al. (2006) was marked `CHECKED` by the ranking agent, which read the PMC author
  manuscript, and `LEAD` by the identifiability agent, whose two PDF endpoints returned HTML.
  Adams et al. (2010) was marked `CHECKED` by the question-forms agent, which read the NEJM PDF,
  and `LEAD` by the display agent, which knew it only through a later paper's description. Both
  are recorded `CHECKED` with the reading agent's pinpoint.
- The clustered-reach agent applied a stricter rule than its brief required, marking a source
  `LEAD` where an automated fetch had summarised the full text, on the ground that it read the
  summary and not the text. That rule is the correct one for this repository and the other agents
  should be held to it when their reports are converted into source records.
- No agent bypassed a paywall, a login wall, or a bot check. Two Springer login walls, a CAPTCHA,
  and several 403 responses are named in the reports and left in place.
- Figures that appeared only in search-engine snippets were reported as unverified and are not
  recorded here. The clustered-reach agent names three such figures explicitly.
- Not verified: every `LEAD` pinpoint, which by definition rests on an abstract or a secondary
  description. Claude Code read none of the roughly sixty sources itself, and the owner has read
  none. Each agent's full report is in the session transcript, not in this file.

## Resulting work

- **Related record IDs:** no new `SRC`, `DEC`, `ATT`, `EXP` or `PRF` entry yet. Bears on
  `DEC-007`, `DEC-010`, `DEC-012`, `PRF-001`, `SRC-014`, `SRC-015`, `SRC-029`, `SRC-068`,
  `SRC-104`, `SRC-106`, `SRC-107`, `SRC-132`, `SRC-134` and `SRC-136`.
- **Files changed:** `AI/STATUS.md` and this record.
- **Related earlier commit or pull request, if applicable:** the seven prompts and their drafting
  record went up in `dbd829a`.
- **Remaining uncertainty:** whether the project relocates its question at all is undecided. Two
  candidates returned negative, one returned a sub-problem rather than a replacement, and the
  three remaining split on which half of the current question they improve. Roughly sixty reported
  sources are unlogged, and all of the load-bearing ones below `CHECKED` status rest on abstracts.

## Later corrections or addenda

Do not silently replace the account above after it has been committed. If a later correction is
needed, add a dated note here or create a new prompt record that links to this one.

## Second pass, same day: the open channel re-run

The owner drafted `drafts/question-prompt-open-channel-2.md` after reading the seven results, and
asked for it to be executed. One background agent ran it. The pass existed to fix one defect: the
first open channel catalogued ten question forms and had read only two in full text. This pass was
held to full text or exclusion from the catalogue, and to three to six forms rather than ten.

Claude Code added one instruction beyond the prompt. The agent was told that if it found a
literature defining its target by the realized sample's own distribution, it had to report it with
the pinpoint even though doing so weakens the project's novelty claim, and that finding it was the
service rather than withholding it.

### The correction, which is the main result of the pass

The claim that no source defines its estimand by the empirical quantiles of the realized finite
vector is false. The counterexample sits inside a source the earlier round had already marked
`CHECKED`.

- Lin, Louis, Paddock and Ridgeway (2006), Bayesian Analysis 1(4):915-946. Equation (3), page 918,
  defines the true rank as a function of the realized K-vector alone. Equation (7), same page,
  converts it to a true percentile. Section 4, page 919, builds loss functions targeting correct
  classification of each unit into the upper part of the realized ensemble. Read from the Project
  Euclid PDF.
- Paddock, Ridgeway, Lin and Louis (2006), Computational Statistics and Data Analysis, Section 2,
  defines the estimand as the empirical distribution function of the realized parameter ensemble.
  Read from PMC2709422.
- Ginestet (2011), doctoral thesis, Imperial College London, arXiv:1105.5004v6, Section 3.2.1,
  equations (3.4) to (3.7), page 33, takes the empirical quantile of the realized ensemble as the
  target, and notes that the posterior expected loss therefore depends on the joint posterior over
  all units.

The diagnosis of how the earlier round missed this: it collapsed a self-referential procedure into
a self-referential estimand. Henderson and Newton (2016), Section 2.2, is the case that separates
them, with the estimand a quantile of the prior and the self-referential step inside the procedure.

Two consequences. The novelty claim must move to the censoring and the dependence, because no
source found combines the self-referential boundary with units that vanish from the ensemble, so
that the empirical quantile is computed over a random subset of the vector it partitions. And
`SRC`-level reading is not a guarantee of coverage: Lin et al. was marked `CHECKED` by an agent
that read the author manuscript and still missed equations (3) and (7).

### The catalogue, four forms, each read in full text

- Mogstad, Romano, Shaikh and Wilhelm (2024), Review of Economic Studies 91(1):476-518, Section
  3.1, page 484 for the rank definition and page 485 for the tau-best set. Construct a set holding
  a unit's true rank among the realized collection with prescribed probability. The question
  transfers to this setting; the apparatus does not, because a venue with no check-in yields no
  estimator at all. These pinpoints supersede the working-paper pinpoints from the earlier pass.
- Henderson and Newton (2016), JRSS-B 78(4):781-804, read as arXiv:1312.5776v5, Section 2.2
  equation (2) and Section 2.3 equation (7). Which ranking rule is optimal simultaneously for every
  list size. Not posable here without adding a population distribution of venue occupancy, which is
  the inequality of spread and still has no source. Its across-unit independence is compatible with
  this setting, since the friend dependence sits within a venue.
- Francisco and Fuller (1991), Annals of Statistics 19(1):454-469, Section 3 equation (3.1), page
  459, with Theorems 4 and 5. A confidence interval for a quantile of the realized finite
  population under stratified cluster sampling. Not posable here, because a design-based statement
  needs known inclusion probabilities and this setting's reporters self-select with an unknown
  probability. The paper separates the finite-population quantile from the superpopulation
  quantile at Corollary 1, which is the distinction this project's boundary turns on.
- Woodroofe (1985), Annals of Statistics 13(1):163-177, Section 1 page 163 and Section 2 page 165
  with Lemma 1. Recovery of a latent distribution when units pass a unit-specific truncation, leave
  no trace when they fail it, and the population size is unknown. Not posable here: the method needs
  the latent variable independent of the truncation variable, and in this setting whether anybody
  posts depends on the venue's own headcount, so that independence fails by construction. Note that
  the earlier censored-boundaries agent rejected Woodroofe for a different reason, from a search
  summary; this reading is from the full text and supersedes it.

### Literatures searched and rejected

Classical ranking and selection including Gupta subset selection and Bechhofer's indifference zone,
rejected as the non-adaptive ancestor of ground already covered. Group testing and pooled
prevalence, rejected on the estimand. Quantile-based classifiers and random-effects quantile
regression, rejected because their quantiles are within-class or model quantiles rather than a
position in a realized vector of units. Conformal prediction, excluded by reasoning rather than by
reading, and therefore unverified.

### New priority lead

Shen and Louis (1998), JRSS-B 60:455-471, is the primary source for the ensemble empirical
distribution function and rank estimands. Paywalled at Wiley, read only through two later
descriptions. The correction above rests on it at one remove, so opening it matters.
