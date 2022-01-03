enter_power :- write("Enter the value of N"),
               read(N),
               write("Enter the power of P"),
               read(P),
               power(N,P,A),
               write("Ans is "),
               write(A).

power(N,0,1).
power(N,1,N).
power(N,X,Y) :- X>1, X1 is X-1 , power(N,X1,Y1) , Y is Y1 * N .