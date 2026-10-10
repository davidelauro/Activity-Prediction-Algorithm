# Search prompt: individual posting-probability heterogeneity

Drafted 2026-10-10, not yet run. For Assumption 2 of
[`drafts/problem-statement-v2.md`](problem-statement-v2.md): posting probability varies per
adopter, same at every venue for a given adopter, mechanism unspecified.

- **Goal:** find out whether a per-visit, bounded posting probability (not lifetime post
  volume) is documented as varying heavily across individuals, and if so, what shape that
  variation takes.
- **Context:** an earlier unverified search (this session, 2026-10-10) found that total posting
  *volume* across social media users is heavy-tailed, commonly power-law or double-power-law
  (for example "Origins of power-law degree distribution in the heterogeneity of human activity
  in social networks," Nature Scientific Reports). That is a claim about lifetime or
  long-window post counts, not about a bounded probability of posting during one visit. Nothing
  found so far closes that gap.
- **Current understanding:** we expect per-adopter heterogeneity in $p_i$ is real and probably
  not narrow or symmetric, but we do not yet know whether the heavy-tailed pattern in post
  *volume* is evidence for a heavy-tailed pattern in per-visit posting *probability*, since
  volume conflates how often someone goes out with how likely they are to post once there.
- **Desired deliverable:** sources read directly (not from a search summary) that speak to
  per-opportunity or per-session posting probability specifically, ideally from check-in apps
  rather than general social media. Where no such source exists, say so plainly rather than
  stretching a volume-based finding to cover it.
- **Constraints:** do not invent citations. Mark every result `LEAD` until personally read and
  checked; only promote to `CHECKED` after verification against the source itself. This feeds
  Assumption 2's generative mechanism, not the problem statement's structural choices
  (`DEC-009` does not apply here, per the same-session discussion distinguishing simulator
  design from the display's structural choices).
- **Definition of done:** a short, honestly-caveated list of sources logged in
  `AI/SOURCES.md`, each marked with whether it actually measures a bounded per-visit
  probability or only an unbounded volume quantity.
