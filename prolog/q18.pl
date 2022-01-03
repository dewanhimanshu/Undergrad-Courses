is_list([]).
is_list([_|_]).


input_list :- write("Enter the list"),
              read(X),
              is_list(X),
              remove_dups(X,Y),
              write("New list is "),
			  print(Y).



maxi([],-1).
is_gr(X,Y) :- X > Y.
maxi([H|T],M) :- maxi(T,M1),is_gr(H,M1),M = H.

maxi([H|T],M) :- maxi(T,M1),not(is_gr(H,M1)),M = M1.


               