# Search prompt: colocated-friend posting dependency

Drafted 2026-10-10, not yet run. For Assumption 3 of
[`drafts/problem-statement-v2.md`](problem-statement-v2.md): friends at the same venue at the
same time do not post independently of each other. No mechanism is stated for what that
dependency actually looks like.

- **Goal:** find documented structure for how colocated friends' check-in or posting behavior
  correlates, specific enough to turn into a generative mechanism for the simulator.
- **Context:** an earlier unverified search (this session, 2026-10-10) surfaced a Foursquare
  study defining "social check-ins" as colocation within one hour, and a related study on
  personality homophily in checkins ("Birds of a feather locate together?"), plus general
  social-contagion literature (tie strength predicting resharing, network embeddedness
  predicting contagion) from outside the check-in domain specifically.
- **Current understanding:** the Foursquare-specific work is descriptive (it defines and
  measures colocation and correlates it with personality traits), not a ready-made probability
  model. Turning it into a mechanism (a shared group-level event, a cascade where one post
  raises others' odds, or something else) is a modelling step the literature will not hand over
  directly.
- **Desired deliverable:** the Foursquare colocation paper and the group-colocation paper read
  in full, not from a search summary, checked for any quantitative structure (correlation
  coefficients, conditional probabilities, anything closer to a formula) beyond the qualitative
  finding that colocated friends behave more similarly.
- **Constraints:** do not invent citations. Mark results `LEAD` until personally read; promote
  to `CHECKED` only after verification. This feeds Assumption 3's generative mechanism, not the
  problem statement's structural choices (`DEC-009` does not apply here, same reasoning as the
  posting-probability prompt).
- **Definition of done:** a verified read of the two most relevant papers, stating plainly
  whether they support a specific mechanism or only the qualitative direction already assumed.
