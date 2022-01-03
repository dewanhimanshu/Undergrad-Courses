input_fact :- write("input a number "),
              read(X),
              fact(X,Y),
              write("Fact is "),
              write(Y).


fact(0,1).
fact(1,1).
fact(N,F):-N1 is N-1 , fact(N1,F1) , F is F1*N.