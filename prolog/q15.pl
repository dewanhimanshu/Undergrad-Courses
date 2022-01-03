len([],0).
len([_|T],N):- len(T,N1) , N is N1 +1.

evenlength(L):- len(L,N) ,
           S is N mod 2,
           S =:= 0. 

oddlength(L):- len(L,N) ,
           S is N mod 2,
           S =:= 1. 