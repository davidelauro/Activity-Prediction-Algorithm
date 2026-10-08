# Activity Prediction Algorithm

A PostgreSQL function that estimates **how much is going on, right now, at each venue** in a
location-based social app — using nothing but a stream of anonymous-ish check-in events
(`user, timestamp, venue`) and a friend graph.

Extracted and generalized from a production feature of a social app I built, where it ranks
venues on a live map. This repo keeps the algorithm and the reasoning behind it; it drops the
app-specific schema and business logic.

## The problem

Check-in data is sparse, noisy, and easy to game: one person posting ten times from the same
table should never outrank ten different small groups. A naive `count(*)` of events rewards
exactly the wrong behavior, and with few active users almost every fine-grained statistic is
indistinguishable from noise.

The goal is a single score per venue that:

- counts **distinct people**, not raw events — a loud individual can't inflate a venue;
- rewards **several independent groups** over one big one posting a lot;
- decays with time **the way real attendance does** (people leave a few hours after arriving,
  not along a flat exponential curve) but gives credit to groups that are still actively
  posting;
- **shrinks toward the global average** when a venue has little data, instead of letting one
  lucky event produce a misleadingly extreme score;
- **adapts its own aggressiveness** to how much data exists overall, so the ranking doesn't
  jump discontinuously the day the 21st user joins;
- comes with an honest **confidence value**, so the UI can flatten the color/ranking scale
  instead of pretending an order that the data doesn't support.

## What's here

- [`sql/activity_score.sql`](sql/activity_score.sql) — the function itself, `language sql`,
  runnable on Postgres against the two tables it expects (`events`, `friendships`).
- [`MODEL.md`](MODEL.md) — the statistical model, written out: every design choice, the
  formula behind it, and why the obvious simpler alternative was rejected.

## At a glance

| Step | What it does |
|---|---|
| Session boundary | Groups events into "sessions" instead of calendar days, so a 1am post counts toward last night |
| Distinct-people counting | Collapses repeat events from the same person into one presence per session |
| Group clustering | Builds a friend-graph transitive closure per venue/session to tell independent parties apart |
| Concave group weight | Weights each party by √(size), so two unrelated pairs outscore one party of four |
| Diversity correction | A Simpson/Hill-style effective-count of *distinct* people behind a venue's activity |
| Conditional survival decay | Weibull-based "still here" probability, conditioned on how long a group has already been posting |
| Bayesian shrinkage | Gamma–Poisson prior pulls low-data venues toward the population mean |
| Adaptive regime | A single parameter θ, driven by active-user count, ramps every knob above from "conservative" to "data-rich" with no step function |
| Confidence score | Exposed alongside the score, based on how many independent party-sessions were observed |

## Status

This is a **standalone extraction for portfolio purposes** — the math and the SQL are real
and running in production, but this repo is not wired to the original app's deployment, CI,
or schema. Treat it as a reference implementation / write-up, not a drop-in library.

## License

MIT — see [LICENSE](LICENSE).
