%{
    #include<stdio.h>
    #include<stdlib.h>
    int yyerror();
    int yywrap();
%}
%token ID NUM OP
%left '+' '-'
%left '*' '/'
%%
start: ID '=' s ';' {return 0;}
s: ID x
    | NUM x
    | '-' x
    | '('s')' x
    ;
x : OP s 
    | '-' s 
    |
    ;

%%
int main()
{
    printf("enter the expression");
    yyparse();
    printf("valid");
    return 0;
}
int yywrap()
{
    return 1;
}
int yyerror()
{
    printf("invalid exp");
    return 0;
}