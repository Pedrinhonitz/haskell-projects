module Interpreter where 

import Lexer 

isValue :: Expr -> Bool
isValue BTrue = True 
isValue BFalse = True 
isValue (Num _) = True 
isValue _ = False 
    
subst :: String -> Expr -> Expr -> Expr
subst x n b@(Var v) = if v == x then n 
                      else b 
subst x n (Add e1 e2) = (Add (subst x n e1) (subst x n e2))
subst x n (And e1 e2) = (And (subst x n e1) (subst x n e2))
subst x n (Eq e1 e2) = (Eq (subst x n e1) (subst x n e2))
subst x n (If e e1 e2) = (If (subst x n e) (subst x n e1) (subst x n e2))
subst x n (Lam v b) = (Lam v (subst x n b))
subst x n (App e1 e2) = (App (subst x n e1) (subst x n e2))
subst _ _ e = e

step :: Expr -> Expr 
step (Add (Num n1) (Num n2)) = Num (n1 + n2)
step (Add (Num n) e) = (Add (Num n) (step e)) 
step (Add e1 e2) = Add (step e1) e2 
step (Sub (Num n1) (Num n2)) = Num (n1 - n2)
step (Sub (Num n) e) = (Sub (Num n) (step e)) 
step (Sub e1 e2) = Sub (step e1) e2 
step (Mult (Num n1) (Num n2)) = Num (n1 * n2)
step (Mult (Num n) e) = (Mult (Num n) (step e)) 
step (Mult e1 e2) = Mult (step e1) e2 
step (And BFalse e) = BFalse 
step (And BTrue e) = e 
step (And e1 e2) = And (step e1) e2 
step (Eq e1 e2) | isValue e1 && isValue e2 = if (e1 == e2) then BTrue 
                                             else BFalse
                | isValue e1 = Eq e1 (step e2)
                | otherwise = Eq (step e1) e2
step (Diff e1 e2) | isValue e1 && isValue e2 = if (e1 == e2) then BFalse 
                                             else BTrue
                | isValue e1 = Diff e1 (step e2)
                | otherwise = Diff (step e1) e2
step (If BTrue e1 e2) = e1 
step (If BFalse e1 e2) = e2 
step (If e e1 e2) = If (step e) e1 e2 
step (App (Lam v b) e) | isValue e = subst v e b 
                       | otherwise = (App (Lam v b) (step e))
step (App e1 e2) = App (step e1) e2 

eval :: Expr -> Expr 
eval e | isValue e = e 
       | otherwise = eval (step e)