is_list([]).
is_list([_|_]).


input_list :- write("Enter the list"),
              read(X),
              is_list(X),
              write("Enter the second list"),
              read(Y),
              is_list(Y),
              conc(X,Y,Z),
              write("New List is "),
              print(Z).

conc([],L2,L2).
conc(L1,[],L1).
conc([Head|Tail1],L2,[Head|Tail2]):-conc(Tail1,L2,Tail2).