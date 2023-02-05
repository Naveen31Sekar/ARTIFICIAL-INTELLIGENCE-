bird(pigeon).
bird(sparrow).
bird(ostrich).

can_fly(pigeon).
can_fly(sparrow).

can_fly_query(X) :- bird(X), can_fly(X), write(X), write(' can fly.'), nl.
cannot_fly_query(X) :- bird(X), \+ can_fly(X), write(X), write(' cannot fly.'), nl.
