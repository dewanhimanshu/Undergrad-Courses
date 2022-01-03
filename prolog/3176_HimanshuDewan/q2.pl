input_max:-write('Enter  X:'), read(X), 
		   write('Enter  Y:'), read(Y), 
           max(X,Y).
max(X,Y) :- X>Y,write("Max number is "),write(X).
max(X,Y) :- Y>X,write("Max number is "),write(Y).
max(X,Y) :- X=:=Y,write("Both are equal").