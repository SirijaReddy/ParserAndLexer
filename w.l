%{
#include "w.tab.h"
void yyerror(char *);
%}

%%

"switch"            {return SWITCH;}
"default"           {return DEFAULT;}
";"                 {return SE;}
"="                 {return ASS;}
":"                 {return COLON;}
"int"               {return INT;}
"float"             {return FLOAT;}
"char"              {return CHAR;}
","                 {return CO;}
"break"             {return BR;}
"return"            {return RT;}
"case"              {return CASE;}
"+"|"-"|"*"|"/"     {return ADD;}
[=,{}();]           {return *yytext;}
[ \t\n]+ ;
[a-zA-Z_][a-zA-Z0-9_]* {return ID;}
[0-9]+ {return NUM;}
. {printf("\n\nlex err");}

%%

int yywrap()
{
return 1;
}
