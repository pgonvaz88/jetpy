lexer grammar JetPyLexer;

LET     : 'let';
DEF     : 'def';
IF      : 'if';
ELIF    : 'elif';
ELSE    : 'else';
WHILE   : 'while';
RETURN  : 'return';
TRUE    : 'true';
FALSE   : 'false';
AND     : 'and';
OR      : 'or';
NOT     : 'not';

INT_T   : 'Int';
FLOAT_T : 'Float';
STRING_T: 'String';
BOOL_T  : 'Bool';
LIST_T  : 'List';
DICT_T  : 'Dict';
ANY_T   : 'Any';

COLON   : ':';
ARROW   : '->';
COMMA   : ',';
ASSIGN  : '=';
LPAREN  : '(';
RPAREN  : ')';
LBRACK  : '[';
RBRACK  : ']';
LBRACE  : '{';
RBRACE  : '}';
DOT     : '.';

EQ      : '==';
NEQ     : '!=';
LT      : '<';
LE      : '<=';
GT      : '>';
GE      : '>=';

PLUS    : '+';
MINUS   : '-';
MUL     : '*';
DIV     : '/';
MOD     : '%';

NUMBER  : [0-9]+ ('.' [0-9]+)?;
STRING  : '"' (~["\r\n])* '"';
IDENT   : [a-zA-Z_][a-zA-Z0-9_]*;

WS      : [ \t]+ -> skip ;
NEWLINE : ('\r'? '\n')+ ;
COMMENT : '#' ~[\r\n]* -> skip ;
