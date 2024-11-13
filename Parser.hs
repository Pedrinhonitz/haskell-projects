{-# OPTIONS_GHC -w #-}
module Parser where 

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.11

data HappyAbsSyn t4
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,161) ([8304,4112,0,0,32768,4063,0,0,0,8304,28688,4128,57216,32815,5,8304,28688,4128,8304,28688,4128,8304,28688,4128,8304,28688,4128,8304,28688,4128,8304,28688,4128,3456,32768,2061,3456,32780,3597,3456,32783,3981,0,32768,5,0,0,0,1024,0,5,8304,32784,20447,8304,16,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","true","false","num","'+'","'-'","\"*|*\"","'*'","and","or","'!'","\"==\"","\"!=\"","\"<=\"","'<'","\">=\"","'>'","'?'","\"?!\"","'|'","%eof"]
        bit_start = st * 24
        bit_end = (st + 1) * 24
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..23]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (5) = happyShift action_2
action_0 (6) = happyShift action_4
action_0 (7) = happyShift action_5
action_0 (14) = happyShift action_6
action_0 (21) = happyShift action_7
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (5) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (8) = happyShift action_10
action_3 (9) = happyShift action_11
action_3 (10) = happyShift action_12
action_3 (11) = happyShift action_13
action_3 (12) = happyShift action_14
action_3 (13) = happyShift action_15
action_3 (15) = happyShift action_16
action_3 (16) = happyShift action_17
action_3 (17) = happyShift action_18
action_3 (18) = happyShift action_19
action_3 (19) = happyShift action_20
action_3 (20) = happyShift action_21
action_3 (24) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 _ = happyReduce_3

action_6 (5) = happyShift action_2
action_6 (6) = happyShift action_4
action_6 (7) = happyShift action_5
action_6 (14) = happyShift action_6
action_6 (21) = happyShift action_7
action_6 (4) = happyGoto action_9
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (5) = happyShift action_2
action_7 (6) = happyShift action_4
action_7 (7) = happyShift action_5
action_7 (14) = happyShift action_6
action_7 (21) = happyShift action_7
action_7 (4) = happyGoto action_8
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (8) = happyShift action_10
action_8 (9) = happyShift action_11
action_8 (10) = happyShift action_12
action_8 (11) = happyShift action_13
action_8 (12) = happyShift action_14
action_8 (13) = happyShift action_15
action_8 (15) = happyShift action_16
action_8 (16) = happyShift action_17
action_8 (17) = happyShift action_18
action_8 (18) = happyShift action_19
action_8 (19) = happyShift action_20
action_8 (20) = happyShift action_21
action_8 (22) = happyShift action_34
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (8) = happyShift action_10
action_9 (9) = happyShift action_11
action_9 (10) = happyShift action_12
action_9 (11) = happyShift action_13
action_9 (13) = happyShift action_15
action_9 _ = happyReduce_10

action_10 (5) = happyShift action_2
action_10 (6) = happyShift action_4
action_10 (7) = happyShift action_5
action_10 (14) = happyShift action_6
action_10 (21) = happyShift action_7
action_10 (4) = happyGoto action_33
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (5) = happyShift action_2
action_11 (6) = happyShift action_4
action_11 (7) = happyShift action_5
action_11 (14) = happyShift action_6
action_11 (21) = happyShift action_7
action_11 (4) = happyGoto action_32
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (5) = happyShift action_2
action_12 (6) = happyShift action_4
action_12 (7) = happyShift action_5
action_12 (14) = happyShift action_6
action_12 (21) = happyShift action_7
action_12 (4) = happyGoto action_31
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (5) = happyShift action_2
action_13 (6) = happyShift action_4
action_13 (7) = happyShift action_5
action_13 (14) = happyShift action_6
action_13 (21) = happyShift action_7
action_13 (4) = happyGoto action_30
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (5) = happyShift action_2
action_14 (6) = happyShift action_4
action_14 (7) = happyShift action_5
action_14 (14) = happyShift action_6
action_14 (21) = happyShift action_7
action_14 (4) = happyGoto action_29
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (5) = happyShift action_2
action_15 (6) = happyShift action_4
action_15 (7) = happyShift action_5
action_15 (14) = happyShift action_6
action_15 (21) = happyShift action_7
action_15 (4) = happyGoto action_28
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (5) = happyShift action_2
action_16 (6) = happyShift action_4
action_16 (7) = happyShift action_5
action_16 (14) = happyShift action_6
action_16 (21) = happyShift action_7
action_16 (4) = happyGoto action_27
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (5) = happyShift action_2
action_17 (6) = happyShift action_4
action_17 (7) = happyShift action_5
action_17 (14) = happyShift action_6
action_17 (21) = happyShift action_7
action_17 (4) = happyGoto action_26
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (5) = happyShift action_2
action_18 (6) = happyShift action_4
action_18 (7) = happyShift action_5
action_18 (14) = happyShift action_6
action_18 (21) = happyShift action_7
action_18 (4) = happyGoto action_25
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (5) = happyShift action_2
action_19 (6) = happyShift action_4
action_19 (7) = happyShift action_5
action_19 (14) = happyShift action_6
action_19 (21) = happyShift action_7
action_19 (4) = happyGoto action_24
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (5) = happyShift action_2
action_20 (6) = happyShift action_4
action_20 (7) = happyShift action_5
action_20 (14) = happyShift action_6
action_20 (21) = happyShift action_7
action_20 (4) = happyGoto action_23
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (5) = happyShift action_2
action_21 (6) = happyShift action_4
action_21 (7) = happyShift action_5
action_21 (14) = happyShift action_6
action_21 (21) = happyShift action_7
action_21 (4) = happyGoto action_22
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (8) = happyShift action_10
action_22 (9) = happyShift action_11
action_22 (10) = happyShift action_12
action_22 (11) = happyShift action_13
action_22 (12) = happyShift action_14
action_22 (13) = happyShift action_15
action_22 _ = happyReduce_16

action_23 (8) = happyShift action_10
action_23 (9) = happyShift action_11
action_23 (10) = happyShift action_12
action_23 (11) = happyShift action_13
action_23 (12) = happyShift action_14
action_23 (13) = happyShift action_15
action_23 (20) = happyShift action_21
action_23 _ = happyReduce_15

action_24 (8) = happyShift action_10
action_24 (9) = happyShift action_11
action_24 (10) = happyShift action_12
action_24 (11) = happyShift action_13
action_24 (12) = happyShift action_14
action_24 (13) = happyShift action_15
action_24 (19) = happyShift action_20
action_24 (20) = happyShift action_21
action_24 _ = happyReduce_14

action_25 (8) = happyShift action_10
action_25 (9) = happyShift action_11
action_25 (10) = happyShift action_12
action_25 (11) = happyShift action_13
action_25 (12) = happyShift action_14
action_25 (13) = happyShift action_15
action_25 (18) = happyShift action_19
action_25 (19) = happyShift action_20
action_25 (20) = happyShift action_21
action_25 _ = happyReduce_13

action_26 (8) = happyShift action_10
action_26 (9) = happyShift action_11
action_26 (10) = happyShift action_12
action_26 (11) = happyShift action_13
action_26 (12) = happyShift action_14
action_26 (13) = happyShift action_15
action_26 (17) = happyShift action_18
action_26 (18) = happyShift action_19
action_26 (19) = happyShift action_20
action_26 (20) = happyShift action_21
action_26 _ = happyReduce_12

action_27 (8) = happyShift action_10
action_27 (9) = happyShift action_11
action_27 (10) = happyShift action_12
action_27 (11) = happyShift action_13
action_27 (12) = happyShift action_14
action_27 (13) = happyShift action_15
action_27 (16) = happyShift action_17
action_27 (17) = happyShift action_18
action_27 (18) = happyShift action_19
action_27 (19) = happyShift action_20
action_27 (20) = happyShift action_21
action_27 _ = happyReduce_11

action_28 (8) = happyShift action_10
action_28 (9) = happyShift action_11
action_28 (10) = happyShift action_12
action_28 (11) = happyShift action_13
action_28 (12) = happyShift action_14
action_28 (13) = happyShift action_15
action_28 (15) = happyShift action_16
action_28 (16) = happyShift action_17
action_28 (17) = happyShift action_18
action_28 (18) = happyShift action_19
action_28 (19) = happyShift action_20
action_28 (20) = happyShift action_21
action_28 _ = happyReduce_9

action_29 (8) = happyShift action_10
action_29 (9) = happyShift action_11
action_29 (10) = happyShift action_12
action_29 (11) = happyShift action_13
action_29 (13) = happyShift action_15
action_29 _ = happyReduce_8

action_30 (10) = happyShift action_12
action_30 (13) = happyShift action_15
action_30 _ = happyReduce_6

action_31 (8) = happyShift action_10
action_31 (9) = happyShift action_11
action_31 (10) = happyShift action_12
action_31 (11) = happyShift action_13
action_31 (12) = happyShift action_14
action_31 (13) = happyShift action_15
action_31 (15) = happyShift action_16
action_31 (16) = happyShift action_17
action_31 (17) = happyShift action_18
action_31 (18) = happyShift action_19
action_31 (19) = happyShift action_20
action_31 (20) = happyShift action_21
action_31 _ = happyReduce_7

action_32 (10) = happyShift action_12
action_32 (11) = happyShift action_13
action_32 (13) = happyShift action_15
action_32 _ = happyReduce_5

action_33 (9) = happyShift action_11
action_33 (10) = happyShift action_12
action_33 (11) = happyShift action_13
action_33 (13) = happyShift action_15
action_33 _ = happyReduce_4

action_34 (5) = happyShift action_2
action_34 (6) = happyShift action_4
action_34 (7) = happyShift action_5
action_34 (14) = happyShift action_6
action_34 (21) = happyShift action_7
action_34 (4) = happyGoto action_35
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (8) = happyShift action_10
action_35 (9) = happyShift action_11
action_35 (10) = happyShift action_12
action_35 (11) = happyShift action_13
action_35 (12) = happyShift action_14
action_35 (13) = happyShift action_15
action_35 (15) = happyShift action_16
action_35 (16) = happyShift action_17
action_35 (17) = happyShift action_18
action_35 (18) = happyShift action_19
action_35 (19) = happyShift action_20
action_35 (20) = happyShift action_21
action_35 (23) = happyShift action_36
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (5) = happyShift action_2
action_36 (6) = happyShift action_4
action_36 (7) = happyShift action_5
action_36 (14) = happyShift action_6
action_36 (21) = happyShift action_7
action_36 (4) = happyGoto action_37
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (8) = happyShift action_10
action_37 (9) = happyShift action_11
action_37 (10) = happyShift action_12
action_37 (11) = happyShift action_13
action_37 (12) = happyShift action_14
action_37 (13) = happyShift action_15
action_37 (15) = happyShift action_16
action_37 (16) = happyShift action_17
action_37 (17) = happyShift action_18
action_37 (18) = happyShift action_19
action_37 (19) = happyShift action_20
action_37 (20) = happyShift action_21
action_37 _ = happyReduce_17

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 _
	 =  HappyAbsSyn4
		 (BTrue
	)

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 _
	 =  HappyAbsSyn4
		 (BFalse
	)

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn4
		 (Num happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_3  4 happyReduction_4
happyReduction_4 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Add happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Mult happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Div happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_2  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Not happy_var_2
	)
happyReduction_10 _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Eq happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Diff happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (MenoIngual happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Meno happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (MaioIngual happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Maio happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happyReduce 6 4 happyReduction_17
happyReduction_17 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 24 24 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenTrue -> cont 5;
	TokenFalse -> cont 6;
	TokenNum happy_dollar_dollar -> cont 7;
	TokenAdd -> cont 8;
	TokenSub -> cont 9;
	TokenDiv -> cont 10;
	TokenMult -> cont 11;
	TokenAnd -> cont 12;
	TokenOr -> cont 13;
	TokenNot -> cont 14;
	TokenEq -> cont 15;
	TokenDiff -> cont 16;
	TokenMenoIngual -> cont 17;
	TokenMeno -> cont 18;
	TokenMaioIngual -> cont 19;
	TokenMaio -> cont 20;
	TokenIf -> cont 21;
	TokenThen -> cont 22;
	TokenElse -> cont 23;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 24 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a 
parseError ts = error "Syntax error: sequência de instruções inválidas."
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}







# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4











































{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "/usr/lib/ghc/include/ghcversion.h" #-}















{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "/tmp/ghc8336_0/ghc_2.h" #-}
































































































































































































{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 









{-# LINE 43 "templates/GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Int Happy_IntList







{-# LINE 65 "templates/GenericTemplate.hs" #-}

{-# LINE 75 "templates/GenericTemplate.hs" #-}

{-# LINE 84 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 137 "templates/GenericTemplate.hs" #-}

{-# LINE 147 "templates/GenericTemplate.hs" #-}
indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 267 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 333 "templates/GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
