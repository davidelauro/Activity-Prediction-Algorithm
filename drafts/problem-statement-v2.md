# Problem statement, version 2

Written 2026-10-09, owner-led, in the USPArC style. It replaces an earlier draft that predicted
a headcount per venue and treated the discrete levels as presentation. This version makes the
three-level display the product and the headcount a latent quantity behind it. The owner deleted
that earlier draft on 2026-10-10 under DEC-008, so it survives only in git history, at commit
`23a4629`, as `drafts/problem-statement-draft.md`.

Settled values appear inline. Open values appear in the table at the end.

## The statement

A social app lets users post a check-in at a public venue. A check-in records one drink, so one
visit can produce several check-ins. Each check-in carries a user, a timestamp, and a venue. The
app accepts a check-in only at the venue's own location. It serves a community of young adults
who want to socialize with friends. We treat the community as a finite set, fixed only at the
moment the app judges it, and its size can differ from one night to the next. We call a member
who uses the app an adopter, and we call the percentage of the community who are adopters the
adoption rate. The app also holds a social graph of mutual follows among adopters.

Three assumptions about posting follow. Non-adopters post nothing. A present adopter posts at
least once with positive probability. That probability can depend on the adopter and on the
venue. Non-friends post independently of one another. Friends at the same venue and time do
not.

Each venue holds a definite number of community members at any moment. We call that number its
true headcount. Each venue also has a fixed capacity, and we call headcount divided by capacity
its true occupancy. The app never reports either number.

The app judges each venue from check-ins posted there in the last two hours, showing every
venue with at least one such check-in. Each shown venue gets one of three levels: quiet
(yellow), busy (orange), or packed (red). The two boundaries are the terciles of tonight's
occupancy distribution among open venues, not a fixed historical threshold. Users compare
levels, not numbers.

The app gets a shown venue right when its level matches its true occupancy. The fraction of
shown venues it gets right is the match rate. A venue that never appears is a different kind of
error. The fraction of busy-or-packed venues that appear at all is the coverage.

Our question is how match rate and coverage depend on adoption rate. We hold four other
quantities fixed: the number of venues, the number of members out, how unequally they spread
across venues, and how often an adopter posts. We ask for the smallest adoption rate at which
match rate and coverage both reach 80 percent, and whether that adoption rate exists at all.

We judge match rate against every possible procedure, since the app could compute its levels in
more than one way. Coverage needs no such care: a venue's appearance depends only on whether
anyone posted, not on the procedure.

Real check-in data exists, but we do not use it. This paper's aim is to find the minimal
adoption rate any algorithm needs before the app implements one, and no such algorithm exists
yet to test. We keep real venue data out of scope too, and we set aside what the map does to
the people who read it: every statement here describes a world where nobody has seen the map.

## Settled, with where each value came from

| Item | Value | Basis |
|---|---|---|
| Number of levels | 3 | owner, chosen for colours recognizable on screen without a legend |
| Labels and colours | quiet, busy, packed as yellow, orange, red | owner |
| Venue with no check-ins | not shown on the map | owner |
| Boundary form | terciles of tonight's own occupancy distribution (headcount divided by capacity) | owner (`DEC-009` dropped the earlier `SRC-028` citation for this row); `DEC-011` brought capacity into scope |
| Quantile split | terciles, equal thirds | owner, `DEC-010` |
| Window | 2 hours | owner (`DEC-009` extended to drop the `SRC-062` citation for this row too) |
| Match rate target | 80 percent | owner |
| Coverage target | 80 percent | owner |
| Presence at the venue | enforced by the app, not assumed | owner, a property of the check-in flow |
| Question form | asked of every possible procedure | owner |

## Open

| Item | Why it is open |
|---|---|
| Hour of the evening | Fixes both the window's justification and the turnout figure |
| How unequally members spread across venues | No source. The owner's own analysis ranks this above adoption rate in governing the answer |
| How often an adopter posts | No source |

## What this statement deliberately does not contain

The posting mechanism behind the owner's insight that per-user post counts carry more
information than a count of posters does. The chain runs from more posts to a longer stay to
company, and `SRC-064` is the lead for measuring it. The chain is a modelling hypothesis, so it
belongs with the solution rather than here. Adopting it would also contradict the second posting
assumption above, which holds the posting probability constant.
