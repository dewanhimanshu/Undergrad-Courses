%{
    int longLength = 0;
    char* word="";
%}
%%
[a-zA-Z]+ {
    if(yyleng>longLength){
        word = yytext;
        longLength = yyleng;
    }
}
%%
int main(){
    yyin = fopen("input.txt","r");
    yylex();
    word[longLength] = '\0';
    printf("Longest word is %s",word);
    fclose(yyin);
    return 0;
}