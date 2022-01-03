%{
    int charCount = 0;
    int lines = 0;
%}
%%
[a-zA-Z] {charCount++;}
[\n] {lines++;}

%%
int main()
{
    yyin = fopen("input.txt","r");
    yylex();
    printf("Number of characters %d and lines %d :",charCount,lines);
    fclose(yyin);
    return 0;
}
