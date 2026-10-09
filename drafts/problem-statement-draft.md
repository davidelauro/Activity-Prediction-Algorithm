# Problem statement draft

Rewritten in the USPArC style from the owner's original text, 2026-10-09. Not placed in
`paper/sections/03-problem-statement.tex` yet; that file stays the owner-authored stub until
the owner decides to put this there.

A social app lets users post a check-in at a public venue. A check-in shares the user's location
at that moment. A group is two or more users who mutually follow each other and check in at the
same venue around the same time. The app targets a community of young adults who want to
socialize with friends. The app shows all users a heat map of predicted current community
activity, with several discrete levels. People deciding where to go out react to the map in two
opposite ways. Some are drawn to venues that look busy. Others avoid venues that look crowded.

The goal is to predict how many community members are present at each venue right now, not
general attendance. Only a small fraction of them check in. We assume independence between
members who are not friends in the app, each checking in with the same probability. Friends
present together are not assumed to check in independently. With very few check-ins or none,
the map stays empty. An empty map cannot tell users where to go. Groups of friends receive
priority only in how the map displays venues, not in the predicted number itself. We leave
venue capacity for later work, once venues can provide it themselves.

No real check-in data exists. We will simulate both real community presence and check-ins,
with check-ins as a subset of that presence. A prediction is good if the map shows each venue
at the right heat level. We prefer underestimating over overestimating. The number of distinct
community members who have checked in sets a lower bound: the prediction never goes below it.

## Open items, not yet decided

- The priority tiebreaker: confirmed as a tiebreaker among venues at the same heat level, not
  yet formalized. Open question inside it: is the friend-presence check personalized per
  viewer, the viewing user's own friends, so the heat level stays identical for everyone but
  the ordering within a level differs per viewer, or is it a single global tiebreak the same
  for every viewer regardless of whose friends they are.
