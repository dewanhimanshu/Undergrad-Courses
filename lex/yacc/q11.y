%{
    #include<stdio.h>
    #include<stdlib.h>
    int yywrap();
    int yyerror();
  
%}
%token A B
%%
S:A E B'\n' {return 0;} 
E: A E B|
    ;
%%
int main()
{
    printf("Enter the experssion");
    yyparse();
    printf("valid expersion");
    return 0;
}
int yyerror()
{
    printf("invalid ");
    exit(0);
}
int yywrap(){
    return 1;
}