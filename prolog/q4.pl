input_fib :- write("Enter the value of X"),
             read(X),
             gen_fib(X,Y),
             write("Result of Fib is"),
             write(Y).

gen_fib(1,0).
gen_fib(2,1).
gen_fib(N,T) :- N1 is N-1 , 
                N2 is N-2, 
                gen_fib(N1,T1) ,
                gen_fib(N2,T2) , 
                T is T1+T2.