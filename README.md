# Activity Prediction Algorithm

This repository holds a PostgreSQL function. The function estimates how much is going on, right
now, at each venue in a location-based social app. It uses only a stream of anonymous-ish
check-in events, each a `(user, timestamp, venue)` triple, and a friend graph.

The function comes from a production feature of a social app we built, where it ranks venues on
a live map. This repository keeps the algorithm and the reasoning behind it. It drops the
app-specific schema and business logic.

## The problem

Check-in data is sparse and noisy, and it is easy to game. One person posting ten times from the
same table should never outrank ten different small groups. A naive `count(*)` of events rewards
exactly the wrong behavior. With few active users, almost every fine-grained statistic is
indistinguishable from noise.

The goal is a single score per venue that meets six criteria. It counts distinct people, not raw
events, so a loud individual cannot inflate a venue. It rewards several independent groups over
one large group that posts often. It decays with time the way real attendance does: people tend
to leave a few hours after arriving, not along a flat exponential curve, but a group still
actively posting should still earn credit. It shrinks toward the global average when a venue has
little data, instead of letting one lucky event produce a misleadingly extreme score. It adapts
its own aggressiveness to the amount of data available overall, so the ranking does not jump
discontinuously the day the 21st user joins. It comes with an honest confidence value, so the UI
can flatten the color or ranking scale instead of presenting an order the data cannot support.

## What is here

- [`sql/activity_score.sql`](sql/activity_score.sql): the function itself, written in SQL and
  runnable on Postgres against the two tables it expects, `events` and `friendships`.
- [`MODEL.md`](MODEL.md): the statistical model, written out in full. It states every design
  choice, the formula behind it, and why the obvious simpler alternative was rejected.

## At a glance

| Step | What it does |
|---|---|
| Session boundary | Groups events into sessions instead of calendar days, so a 1am post counts toward last night |
| Distinct-people counting | Collapses repeat events from the same person into one presence per session |
| Group clustering | Builds a friend-graph transitive closure per venue and session to tell independent parties apart |
| Concave group weight | Weights each party by the square root of its size, so two unrelated pairs outscore one party of four |
| Diversity correction | Computes a Simpson/Hill-style effective count of the distinct people behind a venue's activity |
| Conditional survival decay | Applies a Weibull-based "still here" probability, conditioned on how long a group has already been posting |
| Bayesian shrinkage | Pulls low-data venues toward the population mean with a Gamma-Poisson prior |
| Adaptive regime | Ramps every knob above from "conservative" to "data-rich" with a single parameter, θ, driven by the active-user count, with no step function |
| Confidence score | Exposes a confidence value alongside the score, based on how many independent party-sessions the venue accumulated |

## Status

This repository is a standalone extraction for portfolio purposes. The math and the SQL are
real and run in production, but this repository is not wired to the original app's deployment,
CI, or schema. Treat it as a reference implementation and writeup, not a drop-in library.

## License

MIT. See [LICENSE](LICENSE).
