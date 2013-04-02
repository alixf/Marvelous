%{
	#include <stdio.h>

	void yyerror(char * s);
	int main(void);
%}

%token OPENPARENTHESIS CLOSEPARENTHESIS VAR COMMAND ARGS
%left '+' '-' '*' '%' '/'

%%

input		: statement ';'
			| '\n'
	 		| input
	 		|
	 		;

statement	: COMMAND ARGS
			| DRAWCOMMAND DRAWARGS {}
			| FILLCOMMAND FILLARGS {}
			; 

point

%%

void yyerror(char * s)
{
	printf("error : %s\n", s);
}

int main(void)
{
	yyparse();
}