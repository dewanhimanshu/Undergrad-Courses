    input_numbers :- write('Enter  the first number:'), read(X),
        write('Enter  the second number:'), read(Y),
        write('Enter  the third number:'), read(Z),
        sum(X,Y,Z).

    sum(X,Y,Z) :- not(var(X)), not(var(Y)), var(Z),
        Z is X+Y, write("Sum of numbers is: "), write(Z).

    sum(X,Y,Z) :- not(var(X)), var(Y), not(var(Z)),
        Y is Z+X, write("Sum  of numbers is: "), write(Y).

    sum(X,Y,Z) :- var(X), not(var(Y)), not(var(Z)),
        X is Z+Y, write("Sum of numbers is: "), write(X).   