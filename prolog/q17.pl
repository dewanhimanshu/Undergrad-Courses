is_list([]).
is_list([_|_]).


input_list :- write("Enter the list"),
              read(X),
              is_list(X),
              remove_dups(X,Y),
              write("New list is "),
			  print(Y).


is_member(X, [X|_]).
is_member(X, [_|T]):- is_member(X,T).

remove_dups([], []).


remove_dups([H|T], R):- is_member(H, T),
						remove_dups(T, R).

remove_dups([H|T], [H|R]):- not(is_member(H, T)),
							remove_dups(T, R).