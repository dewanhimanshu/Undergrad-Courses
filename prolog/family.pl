male(sawal).
male(joginder).
male(satpal).
male(sahil).
male(hmanshu).

female(rani).
female(jyoti).
female(ritu).
female(divya).
female(pooja).

parent(sawal,joginder).
parent(sawal,satpal).
parent(rani,joginder).
parent(rani,satpal).
parent(joginder,himanshu).
parent(joginder,divya).
parent(ritu,himanshu).
parent(ritu,divya).
parent(satpal,sahil).
parent(jyoti,sahil).

parent(sawal,pooja).
parent(rani,pooja).

parent(pooja,sita).

mother(X,Y) :- female(X),parent(X,Y).

father(X,Y) :- male(X),parent(X,Y).

parents(X,Y) :- parent(X,C),parent(Y,C) .

brother(X,Y) :- male(X), parent(P,X), parent(P,Y), X\=Y .

uncle(X,Y) :-   parent(P,Y) , brother(X,P).

sibilng(S1,S2) :- parent(P,S1) , parent(P,S2) , S1\=S2.

cousin(C1,C2) :- parent(P1,C1) ,parent(P2,C2) , sibilng(P1,P2) , C1\=C2.

sister(X,Y) :-  female(X), parent(P,X), parent(P,Y), X\=Y.

niece(X,Y) :- female(X) , parent(Z,X) , sibilng(Y,Z).

ancestor(A,D) :- parent(A,D).
ancestor(A,D) :- parent(Z,D) , ancestor(A,Z).




