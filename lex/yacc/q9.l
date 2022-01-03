%{
    #include "y.tab.h"
%}
%%
[a-zA-Z_]([a-zA-Z_0-9]*)? return ID;
[0-9]+(\.[0-9]*)? return NUM;
.|[\n] return yytext[0];
%%