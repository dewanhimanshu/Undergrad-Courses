is_list([]).
is_list([_|_]).


input_list :- write("Enter the list"),
              read(X),
              is_list(X),
              rev(X,Y),
              write("New List is "),
              print(Y).



conc([],L2,L2).
conc(L1,[],L1).
conc([Head|Tail1],L2,[Head|Tail2]):-conc(Tail1,L2,Tail2).

rev([],[]).
rev([H|T],R) :- rev(T,R1) , conc(R1,[H],R).