%{
    #include<stdio.h>
    #include<stdlib.h>
    int yywrap();
    int yyerror();
%}
%token A B
%%
S:A A A A A A A A A A E B '\n' {return 0;}
E: A E 
    |
    ;
%%
int main()
{
    printf("enter the expression");
    yyparse();
    printf("Valid");
    return 0;
}
int yyerror(){
    printf("Invalid");
   exit(0);
}
int yywrap(){
    return 1;
}