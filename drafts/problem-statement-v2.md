# Problem statement, version 2

Written 2026-10-09, owner-led, in the USPArC style. It replaces an earlier draft that predicted
a headcount per venue and treated the discrete levels as presentation. This version makes the
three-level display the product and the headcount a latent quantity behind it. The owner deleted
that earlier draft on 2026-10-10 under DEC-008, so it survives only in git history, at commit
`23a4629`, as `drafts/problem-statement-draft.md`.

Settled values appear inline. Open values appear in the table at the end.

## The statement

A social app lets its users post a check-in at a public venue. Each check-in records one drink,
which means that a single user can post more than once during one visit. Every check-in carries
three things: one user, one timestamp, and one venue. The app accepts a check-in only from a
user at the venue's own location, so a check-in cannot come from somewhere else. The app serves
a community of young adults who want to socialize with friends. We treat that community as a
fixed and finite set of people, because without a fixed set no venue has a well defined number
of members present. Deciding who belongs to that set in practice stays out of scope. We call a
member who uses the app an adopter, and we call the percentage of the community who are adopters
the adoption. The app also holds a social graph of the mutual follows between its adopters.

The app judges a venue from the check-ins posted there inside a window of two hours ending at
the present moment. Within that window we see which adopters posted at the venue and how many
posts each of them made. We see nothing of the members who stayed silent, and nothing of anyone
outside the community.

We assume three things about posting, and without them no procedure could recover anything, so
the question below would have no answer. Non-adopters post nothing. Every adopter present at a
venue posts at least once with the same probability, whatever the venue. Members who are neither
friends nor in company together post independently of one another.

A user opens the app to decide where to go out, so the app must judge how much community
activity each venue holds right now, and it reports that judgement coarsely. It shows every
venue with at least one check-in inside the window, and it places that venue on one of three
levels, which we label quiet, busy and packed and show as yellow, orange and red. Two boundaries
separate the levels, and we set them at quantiles of the headcount distribution. A venue with no
check-ins inside the window does not appear on the map. The user compares levels, not numbers.

Behind those levels sits a quantity we never see. At the present moment each venue holds a
definite number of community members, and we call that number its true headcount. The app never
reports a headcount and does not need to, because a headcount matters only for the level it
falls in.

The app gets a shown venue right when it places that venue on the level its true headcount falls
in. Across the shown venues we measure the fraction placed correctly, and we call that the match
rate. A venue that never appears carries a different kind of error, so we measure it apart. Among
venues whose true headcount reaches busy or packed, we measure the fraction that appear at all,
and we call that the coverage. Our question concerns how the match rate and the coverage depend
on adoption, holding four other quantities fixed: the number of venues, the number of members
out, how unequally those members spread across venues, and how often an adopter posts. We ask for
the smallest adoption at which the match rate reaches 80 percent and the coverage reaches 80
percent, and we ask whether such an adoption exists at all. We put the match rate to every
possible procedure rather than to one, because the app could compute its levels in more than one
way and this statement names none of them. Coverage needs no such care, since a venue appears
according to whether anyone posted and no procedure changes that.

No real check-in data exists for this app, and we keep real venue data out of scope as well.
Venue capacity stays out until venues can report it themselves. We also set aside what the map
does to the people who read it, which means that every statement we make describes a world in
which nobody saw the map.

## Settled, with where each value came from

| Item | Value | Basis |
|---|---|---|
| Number of levels | 3 | owner, chosen for colours recognizable on screen without a legend |
| Labels and colours | quiet, busy, packed as yellow, orange, red | owner |
| Venue with no check-ins | not shown on the map | owner |
| Boundary form | quantiles of the headcount distribution | owner, and `SRC-028` found quantile classes read most accurately |
| Window | 2 hours | owner, anchored on `SRC-062` and bracketed by trade estimates |
| Match rate target | 80 percent | owner |
| Coverage target | 80 percent | owner |
| Presence at the venue | enforced by the app, not assumed | owner, a property of the check-in flow |
| Question form | asked of every possible procedure | owner |

## Open

| Item | Why it is open |
|---|---|
| The quantile split | Terciles give a 33 percent chance baseline. A skew such as 60, 30, 10 lets a procedure that calls everything quiet score 60 percent, which weakens the 80 percent target |
| Hour of the evening | Fixes both the window's justification and the turnout figure |
| How unequally members spread across venues | No source. The owner's own analysis ranks this above adoption in governing the answer |
| How often an adopter posts | No source |

## What this statement deliberately does not contain

The posting mechanism behind the owner's insight that per-user post counts carry more
information than a count of posters does. The chain runs from more posts to a longer stay to
company, and `SRC-064` is the lead for measuring it. The chain is a modelling hypothesis, so it
belongs with the solution rather than here. Adopting it would also contradict the second posting
assumption above, which holds the posting probability constant.
