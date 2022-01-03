%{
    int count =0;
    int flag = 1;
%}
operater [+-/*]
num [0-9]+
open [(]
close [)]
id [A-Za-z_]+[A-Za-z_0-9]*
pred_error {operater}{operater}|{id}{id}|{open}{operater}|{open}{close}|{close}{open}
%%
{open} {count++;}
{close} {count--;}
{pred_error} {flag=0;}

%%
int main()
{
    yyin = fopen("input.txt","r");
    yylex();
    if(count!=0||flag==0){
        printf("invalid");
        return 0;
    }
      printf("valid");
    return 0;  
}