is_list([]).
is_list([_|_]).


input_list :- write("Enter the list"),
              read(X),
              is_list(X),
              sum_list(X,Y),
              write("Sum of list is "),
			  write(Y).

sum_list([],0).
sum_list([H|T],S):- sumlist(T,S1),
				   S is H+S1.