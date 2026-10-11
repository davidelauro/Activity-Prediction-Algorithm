# Problem statement, version 3

Written 2026-10-11. It keeps version 2's setting word for word, adds three layers to it, and
replaces its research question. `DEC-013` moved the project to its application gap, `DEC-014`
dropped the frozen baseline as the reference, and `DEC-015` pointed the question at coverage and
added the layers. Version 2 holds the question we no longer ask.

Operational choices stay open and are listed at the end. We settle them after this file, not
inside it.

## The setting

Owner-authored, settled under `DEC-007`, copied from version 2 unchanged.

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

## Three layers

`DEC-015` adds this section to the setting. We name three objects where version 2 named one.

C is the community network. It holds the real friendships among all community members, adopters
and non-adopters alike. It determines who goes out together.

A is the adopter set. It is the subset of C's members who use the app. It is a set of people, not
a graph.

G is the app's graph of mutual follows among adopters. Its edges run only between members of A,
and only along friendships that exist in C. The app sees G and nothing else.

We take G to hold every friendship between two adopters. This is not an assumption of perfect
data. Correlated posting can arise only between two co-present adopters who are friends, because
non-adopters post nothing and non-friends post independently. So a G holding every
adopter-to-adopter tie holds the complete dependence structure, and the friendships it omits,
those running to non-adopters, cannot produce a correlated post. We call this the
information-complete case, and we run it first because it is the best case for any algorithm that
uses the graph.

## The question

How must A sit inside C for coverage to reach the target? We vary network structure, not adoption
rate. We ask which users the app needs, not how many.

Coverage keeps its meaning from version 2: the fraction of busy-or-packed venues that appear on
the display at all. It needs no algorithm, because a venue appears when anybody posted, whatever
the app then computes.

Two quantities govern the answer. How many adopters there are, and how clustered they are on C. A
clustered A sits in few friend groups, those groups fill few venues, and the rest go dark. A
spread A touches many groups and misses little. The target therefore fixes a curve in those two
quantities rather than a single answer, and we walk that curve.

## What G is for

G does nothing for coverage. An unrecorded follow does not stop anybody posting.

G does two things for the levels. It separates ten check-ins from one group of friends from ten
check-ins by ten strangers, so the algorithm can discount correlated posts instead of reading
them as independent evidence. And it diagnoses the coverage problem the operator cannot otherwise
see, because a dense G means adopters are friends with each other, which means A is clustered,
which predicts poor coverage.

G's value for the levels is largest exactly where A is most clustered, because that is where the
correlation it corrects is largest.

## How we judge it

A synthetic simulation fixes the truth by construction. It generates a fake venue map, a flow of
simulated people, and a synthetic social graph. No real check-in or venue data enters the
project. We may tune the generator from published summary statistics, which keeps the graph
generated rather than real.

For coverage we compare against the coverage a uniformly placed adopter set of the same size
achieves. For the levels, `DEC-014` fixes three reference points: chance as the floor, computed
rather than assumed; the naive rule the app would otherwise ship, meaning venues ordered by
check-in count, by distinct posters, or by count over capacity; and the optimal rule as the
ceiling, which needs the true occupancy and so exists only inside the simulation. We fix every
metric before reading any result.

## Honest limits

We claim simulation evidence, not a theorem. Every number describes a simulator we built
ourselves, which is also the threat: if an algorithm's assumptions match the simulator's
generating process, a good score is guaranteed and means nothing.

Clustering reaches coverage only through the fact that friends arrive together. The mechanism for
that is unsettled, so nothing here computes a coverage figure yet.

The clustering of A inside C has no external anchor. C's own structure is calibratable, and
`SRC-077` already holds generator parameters. How an adopter set sits inside a friendship network
is reported by no source we found, so the ranges we sweep are our own choice.

The literature raises one threat against the levels task itself. Posting probability depends on
venue identity and occupancy is indexed by venue, so the two margins share a covariate, and
Fithian, Elith, Hastie and Keith (2015), Section 1.4, report that relative intensity then stops
being recoverable. We treat that as a soundness check, not a settled objection, because the
transfer step is unproved.

## Open

| Item | Why it is open |
|---|---|
| Which study is the result | Coverage as the result with the algorithm as future work, or coverage as the precondition and the algorithm as the result |
| Coverage target | 80 or 90 percent. `DEC-015` records 90 and the owner has since said 80 |
| Co-attendance mechanism | Groups drawn from C, which makes arrivals batch rather than plain Poisson, or independent arrivals pulled toward friends |
| A G-using rule | The naive rules ignore the graph, so nothing measures G's value until such a rule exists. The owner designs it |
| Incomplete G | Whether we ever relax the information-complete case, and report how the benefit decays |
| Algorithm output | Occupancy we then cut into terciles, or levels assigned directly |
| Boundary source | Truth uses all open venues; the algorithm sees only those with a check-in |
| Misspecification testing | Whether we test outside the regime we built for |
| Hour of the evening | Fixes the turnout the simulation generates |
| Posting rate per adopter | One aggregate anchor, no shape. Swept or estimated |

This file states what the setting is, what we ask of it, and how we judge an answer. It states
nothing about how an algorithm decides. That is the owner's, under `AGENTS.md`.
