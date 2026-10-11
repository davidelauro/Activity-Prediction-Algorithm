# Question prompt: what questions does this observation structure usually carry

Drafted 2026-10-11, not yet run. The open channel in a set that looks for research questions the
setting and the logged literature support better than the current adoption-threshold question
does. The other prompts in the set each test one named candidate direction, chosen by the AI and
therefore shaped by its guesses. This prompt exists so that a direction nobody in the set
thought of can still surface. The setting means every object, assumption and observation rule in
[`drafts/problem-statement-v2.md`](problem-statement-v2.md) except the paragraph beginning "Our
question is". The setting stays fixed. Only the question moves.

- **Goal:** survey what questions papers actually pose when they hold this observation structure,
  and report the question forms rather than the answers. The structure is a latent count per
  place, a self-selected subset of people who report, a reporting probability that varies by
  person and by place, dependence among reporters who are together, a short observation window,
  and a place that disappears from view when nobody reports.
- **Context:** this project restated its problem on 2026-10-09 and asks one question of that
  structure. `AI/STATUS.md` records that the chosen question is blocked on an unselected
  framework, on six unsettled prerequisites, and on three inputs with no source. A question that
  the same structure carries routinely elsewhere may be blocked on fewer of those.
- **Current understanding:** the record already holds sources that share the structure and ask
  different things of it. `SRC-084` and `SRC-085` are `CHECKED` and are the closest prior
  simulators, and `AI/SOURCES.md` notes that neither defines a posting probability at all.
  `SRC-006` is unread and validates a popularity signal against ground truth. `SRC-002` is
  unread and documents known biases in Untappd check-in data, which `AI/SOURCES.md` calls the
  same data shape this project's baseline assumes. `SRC-045` is unread and `AI/SOURCES.md`
  calls it the closest real match for endogenous site congestion. Nobody has catalogued which
  question each of these asks. The working hypothesis, unverified, is that the structure
  supports several standard questions, and that this project picked one without comparing it to
  the others.
- **Desired deliverable:** a catalogue of question forms, each stated in one sentence, each with
  the source that poses it, each marked with what it assumes known. Say for each whether this
  project's setting could pose it without adding an assumption, and whether answering it would
  need any of the three unsourced inputs. Flag any question form that appears in several
  literatures at once, since that signals an established form rather than one author's framing.
- **Constraints:** treat the 45 `CHECKED` sources as the literature we hold. Open the relevant
  `LEAD` before asserting that a question form is absent. Searching outward for new sources is
  part of the job. Do not invent citations. Mark a new source `LEAD` until read. Report question
  forms without ranking them and without recommending one, since the choice of research question
  belongs to the owner under `AGENTS.md`. Do not edit the problem statement. Report plainly if
  the catalogue turns up nothing the current question does not already cover.
- **Definition of done:** a catalogue of at least five question forms with their sources and
  their assumptions, and a plain statement of which ones this setting can pose unchanged.
