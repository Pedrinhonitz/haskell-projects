module Lexer where 

import Data.Char

data Expr = BTrue 
          | BFalse 
          | Num Int 
          | Add Expr Expr 
          | Sub Expr Expr
          | Mult Expr Expr
          | And Expr Expr 
          | Or Expr Expr
          | Not Expr
          | Eq Expr Expr
          | Diff Expr Expr
          | If Expr Expr Expr 
          | Var String 
          | Lam String Expr 
          | App Expr Expr
          deriving (Show, Eq)

data Ty = TBool 
        | TNum 
        deriving (Show, Eq)

data Token = TokenTrue
           | TokenFalse 
           | TokenNum Int 
           | TokenAdd 
           | TokenSub
           | TokenMult
           | TokenAnd 
           | TokenOr
           | TokenNot
           | TokenEq
           | TokenDiff
           | TokenIf
           | TokenThen
           | TokenElse 
           | TokenVar String
           | TokenLam 
           | TokenArrow 
           deriving Show

lexer :: String -> [Token]
lexer [] = [] 
lexer ('+':cs) = TokenAdd : lexer cs 
lexer ('*':cs) = TokenMult : lexer cs
lexer ('\\':cs) = TokenLam : lexer cs 
lexer ('=':'=':cs) = TokenEq : lexer cs 
lexer ('!':'=':cs) = TokenDiff : lexer cs
lexer ('!':cs) = TokenNot : lexer cs 
lexer ('-':'>':cs) = TokenArrow : lexer cs 
lexer ('-':cs) = TokenSub : lexer cs 
lexer (c:cs) 
   | isSpace c = lexer cs 
   | isAlpha c = lexerKW (c:cs) 
   | isDigit c = lexerNum (c:cs)

lexerNum :: String -> [Token]
lexerNum cs = case span isDigit cs of 
                (num, rest) -> TokenNum (read num) : lexer rest

lexerKW :: String -> [Token]
lexerKW cs = case span isAlpha cs of 
               ("true", rest) -> TokenTrue : lexer rest 
               ("false", rest) -> TokenFalse : lexer rest 
               ("and", rest) -> TokenAnd : lexer rest 
               ("or", rest) -> TokenOr : lexer rest
               ("if", rest) -> TokenIf : lexer rest 
               ("then", rest) -> TokenThen : lexer rest 
               ("else", rest) -> TokenElse : lexer rest 
               (var, rest) -> TokenVar var : lexer rest