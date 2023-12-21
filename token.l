%{
#include <stdlib.h>
#include "robotmove.tab.h"
#include <string.h>

%}

%%

 /* main characters */
[0-9]+ { yylval.number=atoi(yytext); return NUMBER; }
"("     { return OB; }
")"     { return CB; }
"{"     { return FOB; } 
"}"     { return FCB; }
","     { return COMMA; }
";"     { return SEMICOLON; }

 /* logics keywords */
"if"    { return IF; }
"else"  { return ELSE; }
"while" { return WHILE; }


 /* area */
"area" { return AREA; }
"is"   { return IS; }
"clear"   { return CLEAR; }


"up" { return UP; }
"down" { return DOWN; }
"left" { return LEFT; }
"right" { return RIGHT; }


 /* actions */
"paint" { return PAINT; }
"nothing" { return NOTHING; }

 /* anything */
[ \t\n]+  ; 
