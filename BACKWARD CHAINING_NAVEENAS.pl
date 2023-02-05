mother(ann,jim).
father(jim,tom).

parent(X,Y) :- mother(X,Y).
parent(X,Y) :- father(X,Y).

ancestor(X,Y) :- parent(X,Y).
ancestor(X,Y) :- parent(X,Z), ancestor(Z,Y).

?- ancestor(ann,tom).
