female(pam).
female(liz).
female(ann).
female(pat).

male(tom).
male(bob).
male(jim).

mother(pam, ann).
mother(liz, pat).

father(tom, ann).
father(bob, pat).

grandfather(X, Y) :- father(X, Z), mother(Z, Y).

grandmother(X, Y) :- mother(X, Z), mother(Z, Y).

sister(X, Y) :- female(X), mother(M, X), mother(M, Y), X \= Y.

brother(X, Y) :- male(X), mother(M, X), mother(M, Y), X \= Y.
