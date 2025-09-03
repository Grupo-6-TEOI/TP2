%%

%cup
%public
%class Lexico
%line
%column
%char



LETRA = [a-zA-Z]
DIGITO = [0-9]
ESPACIO = [\t\f\n\r\n]+
ID = {LETRA} ({LETRA}|{DIGITO}|"_")*
CONST_INT = {DIGITO}+
CONST_STR = "'" ~ "'" // no se si se pueden escapar las " 
CONST_REAL = {DIGITO}* “.”{DIGITO}+ | {DIGITO} “.”{DIGITO}*
CONST_HEX = 0h ({DIGITO}|[A-F]|[a-f])+
COMENTARIO = "/*" ~ "/*" ~ "*/" ~ "*/" | "/*" ~ "*/"


%%

<YYINITIAL>{
"{"   { System.out.println("Token KEY_A encontrado, Lexema " + yytext()); }
"}"   { System.out.println("Token KEY_C encontrado, Lexema " + yytext()); }
"["   { System.out.println("Token CLASP_A encontrado, Lexema " + yytext()); }
"]"   { System.out.println("Token CLASP_C encontrado, Lexema " + yytext()); }
"("   { System.out.println("Token PAREN_A encontrado, Lexema " + yytext()); }
")"   { System.out.println("Token PAREN_C encontrado, Lexema " + yytext()); }
";"   { System.out.println("Token PUNTO_COMA encontrado, Lexema " + yytext()); }
":"   { System.out.println("Token DOS_PUNTOS encontrado, Lexema " + yytext()); }
"."   { System.out.println("Token PUNTO encontrado, Lexema " + yytext()); }
","   { System.out.println("Token COMA encontrado, Lexema " + yytext()); }

"+"   { System.out.println("Token SUMA encontrado, Lexema " + yytext()); }
"-"   { System.out.println("Token RESTA encontrado, Lexema " + yytext()); }
"*"   { System.out.println("Token MULT encontrado, Lexema " + yytext()); }
"/"   { System.out.println("Token DIV encontrado, Lexema " + yytext()); }
"="   { System.out.println("Token ASIGN encontrado, Lexema " + yytext()); }
"%"   { System.out.println("Token MOD encontrado, Lexema " + yytext()); }
"^"   { System.out.println("Token POT encontrado, Lexema " + yytext()); }

">="  { System.out.println("Token MAYOR_IGUAL encontrado, Lexema " + yytext()); }
"<="  { System.out.println("Token MENOR_IGUAL encontrado, Lexema " + yytext()); }
"=="  { System.out.println("Token IGUAL encontrado, Lexema " + yytext()); }
"!="  { System.out.println("Token DISTINTO encontrado, Lexema " + yytext()); }
"&&"  { System.out.println("Token AND encontrado, Lexema " + yytext()); }
"||"  { System.out.println("Token OR encontrado, Lexema " + yytext()); }
">"   { System.out.println("Token MAYOR encontrado, Lexema " + yytext()); }
"<"   { System.out.println("Token MENOR encontrado, Lexema " + yytext()); }
"!"   { System.out.println("Token NOT encontrado, Lexema " + yytext()); }

"IF"      { System.out.println("Token IF encontrado, Lexema " + yytext()); }
"THEN"    { System.out.println("Token THEN encontrado, Lexema " + yytext()); }
"ELSE"    { System.out.println("Token ELSE encontrado, Lexema " + yytext()); }
"WHILE"   { System.out.println("Token WHILE encontrado, Lexema " + yytext()); }
"FOR"     { System.out.println("Token FOR encontrado, Lexema " + yytext()); }
"RETURN"  { System.out.println("Token RETURN encontrado, Lexema " + yytext()); }
"RANGE"   { System.out.println("Token RANGE encontrado, Lexema " + yytext()); }
"IS"      { System.out.println("Token IS encontrado, Lexema " + yytext()); }
"STEP"    { System.out.println("Token STEP encontrado, Lexema " + yytext()); }
"NEXT"    { System.out.println("Token NEXT encontrado, Lexema " + yytext()); }

{ID}         {System.out.println("Token ID encontrado, Lexema " + yytext());}
{CONST_INT}  {System.out.println("Token CONST_INT encontrado, Lexema " + yytext());}
{ESPACIO}    {}
{COMENTARIO} {}

}

[^]          { throw new Error("Caracter no permitido: <" + yytext() + "> en la linea " + yyline); }