# Question prompt: open channel, second round

Drafted 2026-10-11, not yet run. The second pass of the open channel. The first pass ran as
`drafts/question-prompt-question-forms.md` and its results are in
`AI/PROMPTS/2026-10-11-question-relocation-results.md`. This pass exists because that one
catalogued ten question forms and read only two of them in full text. Breadth without reading is
a list of titles, so this pass trades the number of forms for the depth of each.

This prompt deliberately names no target literature. Naming one is what its six sibling prompts
did, and the open channel exists so that a direction nobody guessed can still surface. It names a
structural property to search by instead.

- **Goal:** catalogue question forms posed over this project's observation structure in
  literatures the first pass did not reach, reading each reported form in full text. Within that,
  give priority to any literature whose estimand is defined by the realized sample's own
  distribution rather than by a fixed or prior quantity.
- **Context:** the observation structure is a latent count per place, a self-selected subset of
  people who report, a reporting probability varying by person and by place, dependence among
  reporters who are together, a short window, and a place that disappears from view entirely when
  nobody reports. The target is each place's position relative to the terciles of tonight's own
  occupancy distribution, where occupancy is headcount divided by a fixed capacity.
- **What the first pass already covered, so that you go elsewhere:** health-care provider
  profiling, survey self-selection and effective sample size, presence-only identifiability,
  small-area estimation for unsampled domains, mobile crowdsensing participant selection,
  thresholding and best-arm bandits, queueing inference from transaction traces, nowcasting under
  reporting delay, species-coverage estimation, ecological-status misclassification, and the
  transport minimum-penetration-rate literature. Three further results from the same round are
  settled and must not be rediscovered: the match rate over displayed units is a marginal false
  discovery rate and over all units is one minus a normalized Hamming loss; the optimal rule for a
  0-1 loss around a percentile cut point is published in two independent places; and no source
  found defines its estimand by the empirical quantiles of the realized finite vector.
- **Current understanding:** that last point is the project's clearest novelty candidate, and
  three agents reached it independently. It is also the point most likely to be wrong, because an
  absence is only ever absence of what was searched. So the sharpest thing this pass can do is
  find a literature that does define its target by the realization's own distribution. If one
  exists, the novelty claim changes. Whether one exists is unverified.
- **Desired deliverable:** at most six question forms, each stated in one sentence, each from a
  source whose relevant full text you read, each with the exact pinpoint where the source poses
  it. For each, say what it assumes known, whether this project's setting could pose it without
  adding an assumption, and whether a numerical answer would need the hour of the evening, the
  inequality of spread, or the per-adopter posting rate. Separately, list the literatures you
  searched and rejected, with the reason for each rejection. Separately again, state what you
  found on the self-referential-boundary question.
- **Constraints:** full text or it does not enter the catalogue. A source you reached only through
  an abstract, a landing page, a citing paper's description, or an automated fetch summary may be
  listed as a lead below the catalogue, never inside it, and must name which of those you read. Six
  forms read properly beat twenty listed. Do not invent citations, statistics, pinpoints, or page
  numbers. Check every candidate against the 137 entries in `AI/SOURCES.md` and against the
  sources named in `AI/PROMPTS/2026-10-11-question-relocation-results.md`, since roughly sixty
  sources from that round are reported but not yet logged. Report the forms without ranking them
  and without recommending one, because `AGENTS.md` reserves the choice of research question to
  the owner. Do not propose a model, a framework, or a change to the problem statement.
- **Definition of done:** a catalogue of between three and six fully read question forms from
  literatures the first pass did not reach, a named list of the literatures searched and rejected,
  and a plain verdict on whether any literature defines its estimand by the realized sample's own
  distribution. Report plainly if the pass turns up nothing the current question does not already
  cover, which is a legitimate outcome.
