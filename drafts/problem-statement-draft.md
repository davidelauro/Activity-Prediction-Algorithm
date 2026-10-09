# Problem statement draft

Rewritten in the USPArC style from the owner's original text, 2026-10-09. Not placed in
`paper/sections/03-problem-statement.tex` yet; that file stays the owner-authored stub until
the owner decides to put this there.

A social app lets users post a check-in at a public venue. A check-in shares the user's location
at that moment. A group is two or more users who mutually follow each other and check in at the
same venue around the same time. The app shows all users a heat map of predicted current
activity, with several discrete levels. People deciding where to go out react to the map in two
opposite ways. Some are drawn to venues that look busy. Others avoid venues that look crowded.

The goal is to predict the number of people present at each venue right now. Only a small
fraction of people check in. We assume each person present checks in independently, with the
same probability for everyone. With very few check-ins or none, the map stays empty. An empty
map cannot tell users where to go. Groups of friends receive priority only in how the map
displays venues, not in the predicted number itself. We leave venue capacity for later work,
once venues can provide it themselves.

No real check-in data exists. We will simulate both real presence and check-ins, with check-ins
as a subset of real presence. A prediction is good if the map shows each venue at the right heat
level. We prefer underestimating over overestimating. The number of distinct people who have
checked in sets a lower bound: the prediction never goes below it.
