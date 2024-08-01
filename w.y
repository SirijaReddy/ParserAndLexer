%{
#include<stdio.h>
void yyerror(char *);
int yylex();
%}

%token SWITCH DEFAULT ID ASS SE NUM INT FLOAT CHAR CO ADD DO RT BR CASE COLON
%%
Start	:	switch
    	;

switch	: 	SWITCH '(' ID ')' '{' cst '}' {printf("SWITCH parsing successful\n");}
    	;

default	: 	DEFAULT COLON stat
		;

nid		: 	ID
		|	NUM
		|	ID CO ID
    	;

dec   	:	INT
	  	|	FLOAT
      	;

case	:   CASE nid COLON stat
		|	case case
        ;

cst		:	case
		|	case default
		|	case default BR SE
        ;

stat    :	ID ADD ADD SE
		|	Start
		|	RT NUM SE
		|	RT SE
		|	BR SE
		|	dec ID SE
		|	stat stat
		;

%%


void yyerror(char *s)
{
	printf("parsing err ");
}

int main()
{
	yyparse();
	return 0;
}
