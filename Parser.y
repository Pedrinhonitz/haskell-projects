{
module Parser where 

import Lexer
}

%name parser 
%tokentype { Token }
%error { parseError } 

%token 
  true          { TokenTrue }
  false         { TokenFalse }
  num           { TokenNum $$ }
  '+'           { TokenAdd }
  '-'           { TokenSub }
  "*|*"         { TokenDiv }
  "*%*"         { TokenDivRest }
  '^'           { TokenPotencia }
  '*'           { TokenMult }
  and           { TokenAnd }
  or            { TokenOr }
  '!'           { TokenNot }
  "=="          { TokenEq }
  "!="          { TokenDiff }
  "<="          { TokenMenoIngual }
  '<'           { TokenMeno }
  ">="          { TokenMaioIngual }
  '>'           { TokenMaio }
  '?'           { TokenIf }
  "?!"          { TokenThen }
  '|'           { TokenElse }
  -- if            { TokenIf }
  -- then          { TokenThen }
  -- else          { TokenElse }

%nonassoc if then else '?' "?!" '|'
%left "=="
%left "!="
%left "<="
%left '<'
%left ">="
%left '>'
%left '!' and
%left '+' and
%left '^' and
%left '-' and
%left '*' and
%left '*|*' and
%left '*%*' and

%% 

Exp : true                        { BTrue }
    | false                       { BFalse }
    | num                         { Num $1 }
    | Exp '+' Exp                 { Add $1 $3 }
    | Exp '-' Exp                 { Sub $1 $3 }
    | Exp '*' Exp                 { Mult $1 $3}
    | Exp "*|*" Exp               { Div $1 $3 }
    | Exp "*%*" Exp               { DivRest $1 $3 }
    | Exp '^' Exp                 { Potencia $1 $3}
    | Exp and Exp                 { And $1 $3 }
    | Exp or Exp                  { Or $1 $3}
    | '!' Exp                     { Not $2 }
    | Exp "==" Exp                { Eq $1 $3 }
    | Exp "!=" Exp                { Diff $1 $3 }
    | Exp "<=" Exp                { MenoIngual $1 $3 }
    | Exp '<' Exp                 { Meno $1 $3 }
    | Exp ">=" Exp                { MaioIngual $1 $3 }
    | Exp '>' Exp                 { Maio $1 $3 }
    | '?' Exp "?!" Exp '|' Exp    {If $2 $4 $6 }
    -- | if Exp then Exp else Exp    { If $2 $4 $6 }

{
parseError :: [Token] -> a 
parseError ts = error "Syntax error: sequência de instruções inválidas."
}