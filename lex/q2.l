%{

%}
%%
[a-z] { yytext[0] = yytext[0]+3;
    if(yytext[0]>122){
        yytext[0] = yytext[0]-26;
    }
    printf("%c",yytext[0]);
    
}
%%
int main()
{
    yyin = fopen("input.txt","r");
    yylex();

}