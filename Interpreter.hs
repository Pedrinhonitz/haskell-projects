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
step (Div (Num n1) (Num n2)) = Num (n1 `div` n2)
step (Div (Num n) e) = (Div (Num n) (step e)) 
step (Div e1 e2) = Div (step e1) e2 
step (DivRest (Num n1) (Num n2)) = Num (n1 `mod` n2)
step (DivRest (Num n) e) = (DivRest (Num n) (step e)) 
step (DivRest e1 e2) = DivRest (step e1) e2
step (Potencia (Num n1) (Num n2)) = Num (n1 ^ n2)
step (Potencia (Num n) e) = (Potencia (Num n) (step e)) 
step (Potencia e1 e2) = Potencia (step e1) e2
step (And BFalse e) = BFalse 
step (And BTrue e) = e 
step (And e1 e2) = And (step e1) e2 
step (Or BFalse BFalse) = BFalse
step (Or BTrue _) = BTrue
step (Or _ BTrue) = BTrue
step (Or e1 e2) = Or (step e1) e2
step (Not BTrue) = BFalse
step (Not BFalse) = BTrue
step (Not e) = Not (step e)
step (Eq e1 e2) | isValue e1 && isValue e2 = if (e1 == e2) then BTrue 
                                             else BFalse
                | isValue e1 = Eq e1 (step e2)
                | otherwise = Eq (step e1) e2
step (Diff e1 e2) | isValue e1 && isValue e2 = if (e1 == e2) then BFalse 
                                             else BTrue
                | isValue e1 = Diff e1 (step e2)
                | otherwise = Diff (step e1) e2
step (Meno (Num n1) (Num n2)) = if n1 < n2 then BTrue 
                                   else BFalse
step (Meno e1 e2) | isValue e1 = Meno e1 (step e2)
                  | otherwise = Meno (step e1) e2
step (MenoIngual (Num n1) (Num n2)) = if n1 <= n2 then BTrue 
                                   else BFalse
step (MenoIngual e1 e2) | isValue e1 = MenoIngual e1 (step e2)
                  | otherwise = MenoIngual (step e1) e2
step (Maio (Num n1) (Num n2)) = if n1 > n2 then BTrue 
                                   else BFalse
step (Maio e1 e2) | isValue e1 = Maio e1 (step e2)
                  | otherwise = Maio (step e1) e2
step (MaioIngual (Num n1) (Num n2)) = if n1 >= n2 then BTrue 
                                   else BFalse
step (MaioIngual e1 e2) | isValue e1 = MaioIngual e1 (step e2)
                  | otherwise = MaioIngual (step e1) e2
step (If BTrue e1 e2) = e1 
step (If BFalse e1 e2) = e2 
step (If e e1 e2) = If (step e) e1 e2 
step (App (Lam v b) e) | isValue e = subst v e b 
                       | otherwise = (App (Lam v b) (step e))
step (App e1 e2) = App (step e1) e2 

eval :: Expr -> Expr 
eval e | isValue e = e 
       | otherwise = eval (step e)