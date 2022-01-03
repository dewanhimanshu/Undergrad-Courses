%{
    #include<stdio.h>
    #include<stdlib.h>
    int yyerror();
    int yywrap();
%}
%token ID NUM 
%left '+' '-'
%left '*' '/'
%%
S: E '\n' {return 0;}
E : E '+' E
    | E '-' E 
    | E '*' E 
    | E '/' E 
    |ID
    |NUM 
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