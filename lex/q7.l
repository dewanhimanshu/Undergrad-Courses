%{

%}
%%
[a-zA-Z]+ {
    for(int i=0;i<yyleng;i++){
        for(int j=0;j<i;j++){
            printf("%c",yytext[j]);
        }
        printf("\n");
    }
}
. {}
%%
int main()
{
    yyin = fopen("input.txt","r");
    yylex();
    return 0;  
}