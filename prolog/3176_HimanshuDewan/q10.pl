is_list([]).
is_list([_|_]).


input_list :- write("Enter the list"),
              read(X),
              is_list(X),
              write("Enter the element"),
              read(Y),
              is_mem(Y,X).

is_mem(X,[X|_]).
is_mem(X,[_|Y]) :- is_mem(X,Y).