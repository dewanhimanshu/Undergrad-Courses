%{

%}
key int|float|char|double|main|void|return
alphas [a-zA-Z]+
num [0-9]+
operaters [+-/*]
%%
{key} {printf("Keyword found %s",yytext);}
([a-zA-Z_])+([a-zA-Z0-9_]*) {printf("Identifier found %s",yytext);}
[0-9]+ {printf("integer found %s",yytext);}
[0-9]+\.[0-9]+([E|e]?[-+]?)([0-9]+)? {printf("float found%s",yytext);}
{operaters} {printf("operater found %s",yytext);}
(\/\/) {printf("Comments found %s",yytext);}
\/\*.*\*\/ {printf("multiline comments %s",yytext);}
. {}
%%
int main()
{
    yyin = fopen("input.txt","r");
    yylex();
    return 0;  
}