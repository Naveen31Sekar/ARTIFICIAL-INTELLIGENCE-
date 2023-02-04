studies(charlie,csc135).
studies(charlie,csc135).
studies(charlie,csc131).
studies(arthur,cse134).

teaches(kirke,csc135).
teaches(collins,csc131).
teaches(colling,csc171).
teaches(juniper,csc134).

professor(X,Y):-teacher(X,C),
    studies(Y,C).

