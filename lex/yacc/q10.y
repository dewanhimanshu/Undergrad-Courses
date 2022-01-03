%{
    #include<stdio.h>
    #include<stdlib.h>
    int yywrap();
    int yyerror();
%}
%token NUM
%left '+' '-'
%left '*' '/'
%%
S: E '\n' {printf("Result is %d",$$); return 0;}

E : E '+' E {$$=$1+$3;}
    | E '-' E {$$=$1-$3;}
    | E '*' E {$$=$1*$3;}
    | E '/' E {$$=$1/$3;}
    | NUM
    |
    ;


%%
int main()
{
    printf("enter the expression");
    yyparse();
    return 0;
}
int yywrap()
{   
    return 1;
}
int yyerror()
{
    printf("invalid expression");
    return 0;
}