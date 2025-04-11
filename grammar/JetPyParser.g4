parser grammar JetPyParser;

options { tokenVocab=JetPyLexer; }

program         : statement* EOF ;

statement
    : varDecl
    | funcDecl
    | assignment
    | controlFlow
    | returnStmt
    | funcCall
    | exprStmt ;

varDecl         : LET IDENT (COLON type)? ASSIGN expression ;

funcDecl        : DEF IDENT LPAREN params? RPAREN ARROW type COLON block ;

params          : param (COMMA param)* ;
param           : IDENT COLON type ;

assignment      : IDENT ASSIGN expression ;

controlFlow     : ifStmt | whileStmt ;

ifStmt          : IF expression COLON block
                  (ELIF expression COLON block)*
                  (ELSE COLON block)? ;

whileStmt       : WHILE expression COLON block ;

returnStmt      : RETURN expression ;

funcCall        : IDENT LPAREN args? RPAREN ;
args            : expression (COMMA expression)* ;

exprStmt        : expression ;

block           : NEWLINE (INDENT statement+ DEDENT)? ;

expression      : logicalOr ;
logicalOr       : logicalAnd (OR logicalAnd)* ;
logicalAnd      : equality (AND equality)* ;
equality        : comparison ((EQ | NEQ) comparison)* ;
comparison      : term ((LT | LE | GT | GE) term)* ;
term            : factor ((PLUS | MINUS) factor)* ;
factor          : unary ((MUL | DIV | MOD) unary)* ;
unary           : (NOT | MINUS)? primary ;

primary
    : NUMBER
    | STRING
    | TRUE
    | FALSE
    | IDENT
    | funcCall
    | listLiteral
    | dictLiteral
    | LPAREN expression RPAREN ;

listLiteral     : LBRACK (expression (COMMA expression)*)? RBRACK ;
dictLiteral     : LBRACE (dictEntry (COMMA dictEntry)*)? RBRACE ;
dictEntry       : STRING COLON expression ;

type            : INT_T | FLOAT_T | STRING_T | BOOL_T | LIST_T | DICT_T | ANY_T | IDENT ;
