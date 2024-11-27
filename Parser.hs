{-# OPTIONS_GHC -w #-}
module Parser where

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.11

data HappyAbsSyn t4 t5 t6
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,574) ([448,12546,69,1,0,0,0,0,65520,19583,17,0,0,0,0,0,8220,21264,28676,16512,4428,0,8192,0,0,0,0,0,2,32880,19520,49169,513,17713,65280,51199,276,0,0,61464,32767,4940,0,0,16,0,2048,64512,16383,1107,6528,0,0,0,0,1792,50184,276,8220,21264,28676,16512,4428,448,12546,69,2055,5316,7169,4128,1107,32880,19520,49169,513,17713,1792,50184,276,8220,21264,28676,16512,4428,448,12546,69,2055,5316,7169,4128,1107,47488,0,0,33510,0,38912,779,0,11872,14,32768,15545,0,58880,250,0,0,0,24576,6,0,0,0,0,68,0,0,0,0,0,0,0,16,0,25600,0,0,2055,5316,1,0,12,32880,19520,17,0,0,0,0,0,8220,21264,61444,32767,4428,65472,12799,101,0,32,0,0,0,0,0,49152,65535,17717,1792,50184,276,8220,24336,28676,16512,4428,0,0,0,0,0,0,0,0,47488,63,0,0,192,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","Ty","ExpList","true","false","num","'+'","'-'","\"*|*\"","\"*%*\"","'^'","'*'","and","or","'!'","\"==\"","\"!=\"","\"<=\"","'<'","\">=\"","'>'","'?'","\"?!\"","'|'","\"->\"","\"-\\\\\"","var","Bool","Num","create","':'","'('","')'","'='","\"in\"","'['","']'","','","%eof"]
        bit_start = st * 42
        bit_end = (st + 1) * 42
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..41]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (7) = happyShift action_2
action_0 (8) = happyShift action_4
action_0 (9) = happyShift action_5
action_0 (18) = happyShift action_6
action_0 (25) = happyShift action_7
action_0 (29) = happyShift action_8
action_0 (30) = happyShift action_9
action_0 (33) = happyShift action_10
action_0 (35) = happyShift action_11
action_0 (39) = happyShift action_12
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (7) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (7) = happyShift action_2
action_3 (8) = happyShift action_4
action_3 (9) = happyShift action_5
action_3 (10) = happyShift action_21
action_3 (11) = happyShift action_22
action_3 (12) = happyShift action_23
action_3 (13) = happyShift action_24
action_3 (14) = happyShift action_25
action_3 (15) = happyShift action_26
action_3 (16) = happyShift action_27
action_3 (17) = happyShift action_28
action_3 (18) = happyShift action_6
action_3 (19) = happyShift action_29
action_3 (20) = happyShift action_30
action_3 (21) = happyShift action_31
action_3 (22) = happyShift action_32
action_3 (23) = happyShift action_33
action_3 (24) = happyShift action_34
action_3 (25) = happyShift action_7
action_3 (29) = happyShift action_8
action_3 (30) = happyShift action_9
action_3 (33) = happyShift action_10
action_3 (35) = happyShift action_11
action_3 (39) = happyShift action_12
action_3 (42) = happyAccept
action_3 (4) = happyGoto action_20
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 _ = happyReduce_3

action_6 (7) = happyShift action_2
action_6 (8) = happyShift action_4
action_6 (9) = happyShift action_5
action_6 (18) = happyShift action_6
action_6 (25) = happyShift action_7
action_6 (29) = happyShift action_8
action_6 (30) = happyShift action_9
action_6 (33) = happyShift action_10
action_6 (35) = happyShift action_11
action_6 (39) = happyShift action_12
action_6 (4) = happyGoto action_19
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (7) = happyShift action_2
action_7 (8) = happyShift action_4
action_7 (9) = happyShift action_5
action_7 (18) = happyShift action_6
action_7 (25) = happyShift action_7
action_7 (29) = happyShift action_8
action_7 (30) = happyShift action_9
action_7 (33) = happyShift action_10
action_7 (35) = happyShift action_11
action_7 (39) = happyShift action_12
action_7 (4) = happyGoto action_18
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (30) = happyShift action_17
action_8 _ = happyFail (happyExpListPerState 8)

action_9 _ = happyReduce_20

action_10 (30) = happyShift action_16
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (7) = happyShift action_2
action_11 (8) = happyShift action_4
action_11 (9) = happyShift action_5
action_11 (18) = happyShift action_6
action_11 (25) = happyShift action_7
action_11 (29) = happyShift action_8
action_11 (30) = happyShift action_9
action_11 (33) = happyShift action_10
action_11 (35) = happyShift action_11
action_11 (39) = happyShift action_12
action_11 (4) = happyGoto action_15
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (7) = happyShift action_2
action_12 (8) = happyShift action_4
action_12 (9) = happyShift action_5
action_12 (18) = happyShift action_6
action_12 (25) = happyShift action_7
action_12 (29) = happyShift action_8
action_12 (30) = happyShift action_9
action_12 (33) = happyShift action_10
action_12 (35) = happyShift action_11
action_12 (39) = happyShift action_12
action_12 (4) = happyGoto action_13
action_12 (6) = happyGoto action_14
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (7) = happyShift action_2
action_13 (8) = happyShift action_4
action_13 (9) = happyShift action_5
action_13 (10) = happyShift action_21
action_13 (11) = happyShift action_22
action_13 (12) = happyShift action_23
action_13 (13) = happyShift action_24
action_13 (14) = happyShift action_25
action_13 (15) = happyShift action_26
action_13 (16) = happyShift action_27
action_13 (17) = happyShift action_28
action_13 (18) = happyShift action_6
action_13 (19) = happyShift action_29
action_13 (20) = happyShift action_30
action_13 (21) = happyShift action_31
action_13 (22) = happyShift action_32
action_13 (23) = happyShift action_33
action_13 (24) = happyShift action_34
action_13 (25) = happyShift action_7
action_13 (29) = happyShift action_8
action_13 (30) = happyShift action_9
action_13 (33) = happyShift action_10
action_13 (35) = happyShift action_11
action_13 (39) = happyShift action_12
action_13 (4) = happyGoto action_20
action_13 _ = happyReduce_29

action_14 (40) = happyShift action_53
action_14 (41) = happyShift action_54
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (7) = happyShift action_2
action_15 (8) = happyShift action_4
action_15 (9) = happyShift action_5
action_15 (10) = happyShift action_21
action_15 (11) = happyShift action_22
action_15 (12) = happyShift action_23
action_15 (13) = happyShift action_24
action_15 (14) = happyShift action_25
action_15 (15) = happyShift action_26
action_15 (16) = happyShift action_27
action_15 (17) = happyShift action_28
action_15 (18) = happyShift action_6
action_15 (19) = happyShift action_29
action_15 (20) = happyShift action_30
action_15 (21) = happyShift action_31
action_15 (22) = happyShift action_32
action_15 (23) = happyShift action_33
action_15 (24) = happyShift action_34
action_15 (25) = happyShift action_7
action_15 (29) = happyShift action_8
action_15 (30) = happyShift action_9
action_15 (33) = happyShift action_10
action_15 (35) = happyShift action_11
action_15 (36) = happyShift action_52
action_15 (39) = happyShift action_12
action_15 (4) = happyGoto action_20
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (37) = happyShift action_51
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (34) = happyShift action_50
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (7) = happyShift action_2
action_18 (8) = happyShift action_4
action_18 (9) = happyShift action_5
action_18 (10) = happyShift action_21
action_18 (11) = happyShift action_22
action_18 (12) = happyShift action_23
action_18 (13) = happyShift action_24
action_18 (14) = happyShift action_25
action_18 (15) = happyShift action_26
action_18 (16) = happyShift action_27
action_18 (17) = happyShift action_28
action_18 (18) = happyShift action_6
action_18 (19) = happyShift action_29
action_18 (20) = happyShift action_30
action_18 (21) = happyShift action_31
action_18 (22) = happyShift action_32
action_18 (23) = happyShift action_33
action_18 (24) = happyShift action_34
action_18 (25) = happyShift action_7
action_18 (26) = happyShift action_49
action_18 (29) = happyShift action_8
action_18 (30) = happyShift action_9
action_18 (33) = happyShift action_10
action_18 (35) = happyShift action_11
action_18 (39) = happyShift action_12
action_18 (4) = happyGoto action_20
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (7) = happyShift action_2
action_19 (8) = happyShift action_4
action_19 (9) = happyShift action_5
action_19 (10) = happyShift action_21
action_19 (11) = happyShift action_22
action_19 (12) = happyShift action_23
action_19 (13) = happyShift action_24
action_19 (14) = happyShift action_25
action_19 (15) = happyShift action_26
action_19 (17) = happyShift action_28
action_19 (29) = happyShift action_8
action_19 (30) = happyShift action_9
action_19 (33) = happyShift action_10
action_19 (35) = happyShift action_11
action_19 (39) = happyShift action_12
action_19 (4) = happyGoto action_20
action_19 _ = happyReduce_12

action_20 (7) = happyShift action_2
action_20 (8) = happyShift action_4
action_20 (9) = happyShift action_5
action_20 (10) = happyShift action_21
action_20 (11) = happyShift action_22
action_20 (12) = happyShift action_23
action_20 (13) = happyShift action_24
action_20 (14) = happyShift action_25
action_20 (15) = happyShift action_26
action_20 (16) = happyShift action_27
action_20 (17) = happyShift action_28
action_20 (18) = happyShift action_6
action_20 (19) = happyShift action_29
action_20 (20) = happyShift action_30
action_20 (21) = happyShift action_31
action_20 (22) = happyShift action_32
action_20 (23) = happyShift action_33
action_20 (24) = happyShift action_34
action_20 (25) = happyShift action_7
action_20 (29) = happyShift action_8
action_20 (30) = happyShift action_9
action_20 (33) = happyShift action_10
action_20 (35) = happyShift action_11
action_20 (39) = happyShift action_12
action_20 (4) = happyGoto action_20
action_20 _ = happyReduce_22

action_21 (7) = happyShift action_2
action_21 (8) = happyShift action_4
action_21 (9) = happyShift action_5
action_21 (18) = happyShift action_6
action_21 (25) = happyShift action_7
action_21 (29) = happyShift action_8
action_21 (30) = happyShift action_9
action_21 (33) = happyShift action_10
action_21 (35) = happyShift action_11
action_21 (39) = happyShift action_12
action_21 (4) = happyGoto action_48
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (7) = happyShift action_2
action_22 (8) = happyShift action_4
action_22 (9) = happyShift action_5
action_22 (18) = happyShift action_6
action_22 (25) = happyShift action_7
action_22 (29) = happyShift action_8
action_22 (30) = happyShift action_9
action_22 (33) = happyShift action_10
action_22 (35) = happyShift action_11
action_22 (39) = happyShift action_12
action_22 (4) = happyGoto action_47
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (7) = happyShift action_2
action_23 (8) = happyShift action_4
action_23 (9) = happyShift action_5
action_23 (18) = happyShift action_6
action_23 (25) = happyShift action_7
action_23 (29) = happyShift action_8
action_23 (30) = happyShift action_9
action_23 (33) = happyShift action_10
action_23 (35) = happyShift action_11
action_23 (39) = happyShift action_12
action_23 (4) = happyGoto action_46
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (7) = happyShift action_2
action_24 (8) = happyShift action_4
action_24 (9) = happyShift action_5
action_24 (18) = happyShift action_6
action_24 (25) = happyShift action_7
action_24 (29) = happyShift action_8
action_24 (30) = happyShift action_9
action_24 (33) = happyShift action_10
action_24 (35) = happyShift action_11
action_24 (39) = happyShift action_12
action_24 (4) = happyGoto action_45
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (7) = happyShift action_2
action_25 (8) = happyShift action_4
action_25 (9) = happyShift action_5
action_25 (18) = happyShift action_6
action_25 (25) = happyShift action_7
action_25 (29) = happyShift action_8
action_25 (30) = happyShift action_9
action_25 (33) = happyShift action_10
action_25 (35) = happyShift action_11
action_25 (39) = happyShift action_12
action_25 (4) = happyGoto action_44
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (7) = happyShift action_2
action_26 (8) = happyShift action_4
action_26 (9) = happyShift action_5
action_26 (18) = happyShift action_6
action_26 (25) = happyShift action_7
action_26 (29) = happyShift action_8
action_26 (30) = happyShift action_9
action_26 (33) = happyShift action_10
action_26 (35) = happyShift action_11
action_26 (39) = happyShift action_12
action_26 (4) = happyGoto action_43
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (7) = happyShift action_2
action_27 (8) = happyShift action_4
action_27 (9) = happyShift action_5
action_27 (18) = happyShift action_6
action_27 (25) = happyShift action_7
action_27 (29) = happyShift action_8
action_27 (30) = happyShift action_9
action_27 (33) = happyShift action_10
action_27 (35) = happyShift action_11
action_27 (39) = happyShift action_12
action_27 (4) = happyGoto action_42
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (7) = happyShift action_2
action_28 (8) = happyShift action_4
action_28 (9) = happyShift action_5
action_28 (18) = happyShift action_6
action_28 (25) = happyShift action_7
action_28 (29) = happyShift action_8
action_28 (30) = happyShift action_9
action_28 (33) = happyShift action_10
action_28 (35) = happyShift action_11
action_28 (39) = happyShift action_12
action_28 (4) = happyGoto action_41
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (7) = happyShift action_2
action_29 (8) = happyShift action_4
action_29 (9) = happyShift action_5
action_29 (18) = happyShift action_6
action_29 (25) = happyShift action_7
action_29 (29) = happyShift action_8
action_29 (30) = happyShift action_9
action_29 (33) = happyShift action_10
action_29 (35) = happyShift action_11
action_29 (39) = happyShift action_12
action_29 (4) = happyGoto action_40
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (7) = happyShift action_2
action_30 (8) = happyShift action_4
action_30 (9) = happyShift action_5
action_30 (18) = happyShift action_6
action_30 (25) = happyShift action_7
action_30 (29) = happyShift action_8
action_30 (30) = happyShift action_9
action_30 (33) = happyShift action_10
action_30 (35) = happyShift action_11
action_30 (39) = happyShift action_12
action_30 (4) = happyGoto action_39
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (7) = happyShift action_2
action_31 (8) = happyShift action_4
action_31 (9) = happyShift action_5
action_31 (18) = happyShift action_6
action_31 (25) = happyShift action_7
action_31 (29) = happyShift action_8
action_31 (30) = happyShift action_9
action_31 (33) = happyShift action_10
action_31 (35) = happyShift action_11
action_31 (39) = happyShift action_12
action_31 (4) = happyGoto action_38
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (7) = happyShift action_2
action_32 (8) = happyShift action_4
action_32 (9) = happyShift action_5
action_32 (18) = happyShift action_6
action_32 (25) = happyShift action_7
action_32 (29) = happyShift action_8
action_32 (30) = happyShift action_9
action_32 (33) = happyShift action_10
action_32 (35) = happyShift action_11
action_32 (39) = happyShift action_12
action_32 (4) = happyGoto action_37
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (7) = happyShift action_2
action_33 (8) = happyShift action_4
action_33 (9) = happyShift action_5
action_33 (18) = happyShift action_6
action_33 (25) = happyShift action_7
action_33 (29) = happyShift action_8
action_33 (30) = happyShift action_9
action_33 (33) = happyShift action_10
action_33 (35) = happyShift action_11
action_33 (39) = happyShift action_12
action_33 (4) = happyGoto action_36
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (7) = happyShift action_2
action_34 (8) = happyShift action_4
action_34 (9) = happyShift action_5
action_34 (18) = happyShift action_6
action_34 (25) = happyShift action_7
action_34 (29) = happyShift action_8
action_34 (30) = happyShift action_9
action_34 (33) = happyShift action_10
action_34 (35) = happyShift action_11
action_34 (39) = happyShift action_12
action_34 (4) = happyGoto action_35
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (7) = happyShift action_2
action_35 (8) = happyShift action_4
action_35 (9) = happyShift action_5
action_35 (10) = happyShift action_21
action_35 (11) = happyShift action_22
action_35 (12) = happyShift action_23
action_35 (13) = happyShift action_24
action_35 (14) = happyShift action_25
action_35 (15) = happyShift action_26
action_35 (16) = happyShift action_27
action_35 (17) = happyShift action_28
action_35 (18) = happyShift action_6
action_35 (29) = happyShift action_8
action_35 (30) = happyShift action_9
action_35 (33) = happyShift action_10
action_35 (35) = happyShift action_11
action_35 (39) = happyShift action_12
action_35 (4) = happyGoto action_20
action_35 _ = happyReduce_18

action_36 (7) = happyShift action_2
action_36 (8) = happyShift action_4
action_36 (9) = happyShift action_5
action_36 (10) = happyShift action_21
action_36 (11) = happyShift action_22
action_36 (12) = happyShift action_23
action_36 (13) = happyShift action_24
action_36 (14) = happyShift action_25
action_36 (15) = happyShift action_26
action_36 (16) = happyShift action_27
action_36 (17) = happyShift action_28
action_36 (18) = happyShift action_6
action_36 (24) = happyShift action_34
action_36 (29) = happyShift action_8
action_36 (30) = happyShift action_9
action_36 (33) = happyShift action_10
action_36 (35) = happyShift action_11
action_36 (39) = happyShift action_12
action_36 (4) = happyGoto action_20
action_36 _ = happyReduce_17

action_37 (7) = happyShift action_2
action_37 (8) = happyShift action_4
action_37 (9) = happyShift action_5
action_37 (10) = happyShift action_21
action_37 (11) = happyShift action_22
action_37 (12) = happyShift action_23
action_37 (13) = happyShift action_24
action_37 (14) = happyShift action_25
action_37 (15) = happyShift action_26
action_37 (16) = happyShift action_27
action_37 (17) = happyShift action_28
action_37 (18) = happyShift action_6
action_37 (23) = happyShift action_33
action_37 (24) = happyShift action_34
action_37 (29) = happyShift action_8
action_37 (30) = happyShift action_9
action_37 (33) = happyShift action_10
action_37 (35) = happyShift action_11
action_37 (39) = happyShift action_12
action_37 (4) = happyGoto action_20
action_37 _ = happyReduce_16

action_38 (7) = happyShift action_2
action_38 (8) = happyShift action_4
action_38 (9) = happyShift action_5
action_38 (10) = happyShift action_21
action_38 (11) = happyShift action_22
action_38 (12) = happyShift action_23
action_38 (13) = happyShift action_24
action_38 (14) = happyShift action_25
action_38 (15) = happyShift action_26
action_38 (16) = happyShift action_27
action_38 (17) = happyShift action_28
action_38 (18) = happyShift action_6
action_38 (22) = happyShift action_32
action_38 (23) = happyShift action_33
action_38 (24) = happyShift action_34
action_38 (29) = happyShift action_8
action_38 (30) = happyShift action_9
action_38 (33) = happyShift action_10
action_38 (35) = happyShift action_11
action_38 (39) = happyShift action_12
action_38 (4) = happyGoto action_20
action_38 _ = happyReduce_15

action_39 (7) = happyShift action_2
action_39 (8) = happyShift action_4
action_39 (9) = happyShift action_5
action_39 (10) = happyShift action_21
action_39 (11) = happyShift action_22
action_39 (12) = happyShift action_23
action_39 (13) = happyShift action_24
action_39 (14) = happyShift action_25
action_39 (15) = happyShift action_26
action_39 (16) = happyShift action_27
action_39 (17) = happyShift action_28
action_39 (18) = happyShift action_6
action_39 (21) = happyShift action_31
action_39 (22) = happyShift action_32
action_39 (23) = happyShift action_33
action_39 (24) = happyShift action_34
action_39 (29) = happyShift action_8
action_39 (30) = happyShift action_9
action_39 (33) = happyShift action_10
action_39 (35) = happyShift action_11
action_39 (39) = happyShift action_12
action_39 (4) = happyGoto action_20
action_39 _ = happyReduce_14

action_40 (7) = happyShift action_2
action_40 (8) = happyShift action_4
action_40 (9) = happyShift action_5
action_40 (10) = happyShift action_21
action_40 (11) = happyShift action_22
action_40 (12) = happyShift action_23
action_40 (13) = happyShift action_24
action_40 (14) = happyShift action_25
action_40 (15) = happyShift action_26
action_40 (16) = happyShift action_27
action_40 (17) = happyShift action_28
action_40 (18) = happyShift action_6
action_40 (20) = happyShift action_30
action_40 (21) = happyShift action_31
action_40 (22) = happyShift action_32
action_40 (23) = happyShift action_33
action_40 (24) = happyShift action_34
action_40 (29) = happyShift action_8
action_40 (30) = happyShift action_9
action_40 (33) = happyShift action_10
action_40 (35) = happyShift action_11
action_40 (39) = happyShift action_12
action_40 (4) = happyGoto action_20
action_40 _ = happyReduce_13

action_41 (7) = happyShift action_2
action_41 (8) = happyShift action_4
action_41 (9) = happyShift action_5
action_41 (10) = happyShift action_21
action_41 (11) = happyShift action_22
action_41 (12) = happyShift action_23
action_41 (13) = happyShift action_24
action_41 (14) = happyShift action_25
action_41 (15) = happyShift action_26
action_41 (16) = happyShift action_27
action_41 (17) = happyShift action_28
action_41 (18) = happyShift action_6
action_41 (19) = happyShift action_29
action_41 (20) = happyShift action_30
action_41 (21) = happyShift action_31
action_41 (22) = happyShift action_32
action_41 (23) = happyShift action_33
action_41 (24) = happyShift action_34
action_41 (25) = happyShift action_7
action_41 (29) = happyShift action_8
action_41 (30) = happyShift action_9
action_41 (33) = happyShift action_10
action_41 (35) = happyShift action_11
action_41 (39) = happyShift action_12
action_41 (4) = happyGoto action_20
action_41 _ = happyReduce_11

action_42 (7) = happyShift action_2
action_42 (8) = happyShift action_4
action_42 (9) = happyShift action_5
action_42 (10) = happyShift action_21
action_42 (11) = happyShift action_22
action_42 (12) = happyShift action_23
action_42 (13) = happyShift action_24
action_42 (14) = happyShift action_25
action_42 (15) = happyShift action_26
action_42 (17) = happyShift action_28
action_42 (29) = happyShift action_8
action_42 (30) = happyShift action_9
action_42 (33) = happyShift action_10
action_42 (35) = happyShift action_11
action_42 (39) = happyShift action_12
action_42 (4) = happyGoto action_20
action_42 _ = happyReduce_10

action_43 (7) = happyShift action_2
action_43 (8) = happyShift action_4
action_43 (9) = happyShift action_5
action_43 (12) = happyShift action_23
action_43 (13) = happyShift action_24
action_43 (17) = happyShift action_28
action_43 (29) = happyShift action_8
action_43 (30) = happyShift action_9
action_43 (33) = happyShift action_10
action_43 (35) = happyShift action_11
action_43 (39) = happyShift action_12
action_43 (4) = happyGoto action_20
action_43 _ = happyReduce_6

action_44 (7) = happyShift action_2
action_44 (8) = happyShift action_4
action_44 (9) = happyShift action_5
action_44 (11) = happyShift action_22
action_44 (12) = happyShift action_23
action_44 (13) = happyShift action_24
action_44 (15) = happyShift action_26
action_44 (17) = happyShift action_28
action_44 (29) = happyShift action_8
action_44 (30) = happyShift action_9
action_44 (33) = happyShift action_10
action_44 (35) = happyShift action_11
action_44 (39) = happyShift action_12
action_44 (4) = happyGoto action_20
action_44 _ = happyReduce_9

action_45 (7) = happyShift action_2
action_45 (8) = happyShift action_4
action_45 (9) = happyShift action_5
action_45 (10) = happyShift action_21
action_45 (11) = happyShift action_22
action_45 (12) = happyShift action_23
action_45 (13) = happyShift action_24
action_45 (14) = happyShift action_25
action_45 (15) = happyShift action_26
action_45 (16) = happyShift action_27
action_45 (17) = happyShift action_28
action_45 (18) = happyShift action_6
action_45 (19) = happyShift action_29
action_45 (20) = happyShift action_30
action_45 (21) = happyShift action_31
action_45 (22) = happyShift action_32
action_45 (23) = happyShift action_33
action_45 (24) = happyShift action_34
action_45 (25) = happyShift action_7
action_45 (29) = happyShift action_8
action_45 (30) = happyShift action_9
action_45 (33) = happyShift action_10
action_45 (35) = happyShift action_11
action_45 (39) = happyShift action_12
action_45 (4) = happyGoto action_20
action_45 _ = happyReduce_8

action_46 (7) = happyShift action_2
action_46 (8) = happyShift action_4
action_46 (9) = happyShift action_5
action_46 (10) = happyShift action_21
action_46 (11) = happyShift action_22
action_46 (12) = happyShift action_23
action_46 (13) = happyShift action_24
action_46 (14) = happyShift action_25
action_46 (15) = happyShift action_26
action_46 (16) = happyShift action_27
action_46 (17) = happyShift action_28
action_46 (18) = happyShift action_6
action_46 (19) = happyShift action_29
action_46 (20) = happyShift action_30
action_46 (21) = happyShift action_31
action_46 (22) = happyShift action_32
action_46 (23) = happyShift action_33
action_46 (24) = happyShift action_34
action_46 (25) = happyShift action_7
action_46 (29) = happyShift action_8
action_46 (30) = happyShift action_9
action_46 (33) = happyShift action_10
action_46 (35) = happyShift action_11
action_46 (39) = happyShift action_12
action_46 (4) = happyGoto action_20
action_46 _ = happyReduce_7

action_47 (7) = happyShift action_2
action_47 (8) = happyShift action_4
action_47 (9) = happyShift action_5
action_47 (12) = happyShift action_23
action_47 (13) = happyShift action_24
action_47 (15) = happyShift action_26
action_47 (17) = happyShift action_28
action_47 (29) = happyShift action_8
action_47 (30) = happyShift action_9
action_47 (33) = happyShift action_10
action_47 (35) = happyShift action_11
action_47 (39) = happyShift action_12
action_47 (4) = happyGoto action_20
action_47 _ = happyReduce_5

action_48 (7) = happyShift action_2
action_48 (8) = happyShift action_4
action_48 (9) = happyShift action_5
action_48 (11) = happyShift action_22
action_48 (12) = happyShift action_23
action_48 (13) = happyShift action_24
action_48 (14) = happyShift action_25
action_48 (15) = happyShift action_26
action_48 (17) = happyShift action_28
action_48 (29) = happyShift action_8
action_48 (30) = happyShift action_9
action_48 (33) = happyShift action_10
action_48 (35) = happyShift action_11
action_48 (39) = happyShift action_12
action_48 (4) = happyGoto action_20
action_48 _ = happyReduce_4

action_49 (7) = happyShift action_2
action_49 (8) = happyShift action_4
action_49 (9) = happyShift action_5
action_49 (18) = happyShift action_6
action_49 (25) = happyShift action_7
action_49 (29) = happyShift action_8
action_49 (30) = happyShift action_9
action_49 (33) = happyShift action_10
action_49 (35) = happyShift action_11
action_49 (39) = happyShift action_12
action_49 (4) = happyGoto action_60
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (31) = happyShift action_58
action_50 (32) = happyShift action_59
action_50 (5) = happyGoto action_57
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (7) = happyShift action_2
action_51 (8) = happyShift action_4
action_51 (9) = happyShift action_5
action_51 (18) = happyShift action_6
action_51 (25) = happyShift action_7
action_51 (29) = happyShift action_8
action_51 (30) = happyShift action_9
action_51 (33) = happyShift action_10
action_51 (35) = happyShift action_11
action_51 (39) = happyShift action_12
action_51 (4) = happyGoto action_56
action_51 _ = happyFail (happyExpListPerState 51)

action_52 _ = happyReduce_23

action_53 _ = happyReduce_25

action_54 (7) = happyShift action_2
action_54 (8) = happyShift action_4
action_54 (9) = happyShift action_5
action_54 (18) = happyShift action_6
action_54 (25) = happyShift action_7
action_54 (29) = happyShift action_8
action_54 (30) = happyShift action_9
action_54 (33) = happyShift action_10
action_54 (35) = happyShift action_11
action_54 (39) = happyShift action_12
action_54 (4) = happyGoto action_55
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (7) = happyShift action_2
action_55 (8) = happyShift action_4
action_55 (9) = happyShift action_5
action_55 (10) = happyShift action_21
action_55 (11) = happyShift action_22
action_55 (12) = happyShift action_23
action_55 (13) = happyShift action_24
action_55 (14) = happyShift action_25
action_55 (15) = happyShift action_26
action_55 (16) = happyShift action_27
action_55 (17) = happyShift action_28
action_55 (18) = happyShift action_6
action_55 (19) = happyShift action_29
action_55 (20) = happyShift action_30
action_55 (21) = happyShift action_31
action_55 (22) = happyShift action_32
action_55 (23) = happyShift action_33
action_55 (24) = happyShift action_34
action_55 (25) = happyShift action_7
action_55 (29) = happyShift action_8
action_55 (30) = happyShift action_9
action_55 (33) = happyShift action_10
action_55 (35) = happyShift action_11
action_55 (39) = happyShift action_12
action_55 (4) = happyGoto action_20
action_55 _ = happyReduce_30

action_56 (7) = happyShift action_2
action_56 (8) = happyShift action_4
action_56 (9) = happyShift action_5
action_56 (10) = happyShift action_21
action_56 (11) = happyShift action_22
action_56 (12) = happyShift action_23
action_56 (13) = happyShift action_24
action_56 (14) = happyShift action_25
action_56 (15) = happyShift action_26
action_56 (16) = happyShift action_27
action_56 (17) = happyShift action_28
action_56 (18) = happyShift action_6
action_56 (19) = happyShift action_29
action_56 (20) = happyShift action_30
action_56 (21) = happyShift action_31
action_56 (22) = happyShift action_32
action_56 (23) = happyShift action_33
action_56 (24) = happyShift action_34
action_56 (25) = happyShift action_7
action_56 (29) = happyShift action_8
action_56 (30) = happyShift action_9
action_56 (33) = happyShift action_10
action_56 (35) = happyShift action_11
action_56 (38) = happyShift action_63
action_56 (39) = happyShift action_12
action_56 (4) = happyGoto action_20
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (28) = happyShift action_62
action_57 _ = happyFail (happyExpListPerState 57)

action_58 _ = happyReduce_26

action_59 _ = happyReduce_27

action_60 (7) = happyShift action_2
action_60 (8) = happyShift action_4
action_60 (9) = happyShift action_5
action_60 (10) = happyShift action_21
action_60 (11) = happyShift action_22
action_60 (12) = happyShift action_23
action_60 (13) = happyShift action_24
action_60 (14) = happyShift action_25
action_60 (15) = happyShift action_26
action_60 (16) = happyShift action_27
action_60 (17) = happyShift action_28
action_60 (18) = happyShift action_6
action_60 (19) = happyShift action_29
action_60 (20) = happyShift action_30
action_60 (21) = happyShift action_31
action_60 (22) = happyShift action_32
action_60 (23) = happyShift action_33
action_60 (24) = happyShift action_34
action_60 (25) = happyShift action_7
action_60 (27) = happyShift action_61
action_60 (29) = happyShift action_8
action_60 (30) = happyShift action_9
action_60 (33) = happyShift action_10
action_60 (35) = happyShift action_11
action_60 (39) = happyShift action_12
action_60 (4) = happyGoto action_20
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (7) = happyShift action_2
action_61 (8) = happyShift action_4
action_61 (9) = happyShift action_5
action_61 (18) = happyShift action_6
action_61 (25) = happyShift action_7
action_61 (29) = happyShift action_8
action_61 (30) = happyShift action_9
action_61 (33) = happyShift action_10
action_61 (35) = happyShift action_11
action_61 (39) = happyShift action_12
action_61 (4) = happyGoto action_67
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (7) = happyShift action_2
action_62 (8) = happyShift action_4
action_62 (9) = happyShift action_5
action_62 (18) = happyShift action_6
action_62 (25) = happyShift action_7
action_62 (29) = happyShift action_8
action_62 (30) = happyShift action_9
action_62 (31) = happyShift action_58
action_62 (32) = happyShift action_59
action_62 (33) = happyShift action_10
action_62 (35) = happyShift action_11
action_62 (39) = happyShift action_12
action_62 (4) = happyGoto action_65
action_62 (5) = happyGoto action_66
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (7) = happyShift action_2
action_63 (8) = happyShift action_4
action_63 (9) = happyShift action_5
action_63 (18) = happyShift action_6
action_63 (25) = happyShift action_7
action_63 (29) = happyShift action_8
action_63 (30) = happyShift action_9
action_63 (33) = happyShift action_10
action_63 (35) = happyShift action_11
action_63 (39) = happyShift action_12
action_63 (4) = happyGoto action_64
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (7) = happyShift action_2
action_64 (8) = happyShift action_4
action_64 (9) = happyShift action_5
action_64 (10) = happyShift action_21
action_64 (11) = happyShift action_22
action_64 (12) = happyShift action_23
action_64 (13) = happyShift action_24
action_64 (14) = happyShift action_25
action_64 (15) = happyShift action_26
action_64 (16) = happyShift action_27
action_64 (17) = happyShift action_28
action_64 (18) = happyShift action_6
action_64 (19) = happyShift action_29
action_64 (20) = happyShift action_30
action_64 (21) = happyShift action_31
action_64 (22) = happyShift action_32
action_64 (23) = happyShift action_33
action_64 (24) = happyShift action_34
action_64 (25) = happyShift action_7
action_64 (29) = happyShift action_8
action_64 (30) = happyShift action_9
action_64 (33) = happyShift action_10
action_64 (35) = happyShift action_11
action_64 (39) = happyShift action_12
action_64 (4) = happyGoto action_20
action_64 _ = happyReduce_24

action_65 (7) = happyShift action_2
action_65 (8) = happyShift action_4
action_65 (9) = happyShift action_5
action_65 (10) = happyShift action_21
action_65 (11) = happyShift action_22
action_65 (12) = happyShift action_23
action_65 (13) = happyShift action_24
action_65 (14) = happyShift action_25
action_65 (15) = happyShift action_26
action_65 (16) = happyShift action_27
action_65 (17) = happyShift action_28
action_65 (18) = happyShift action_6
action_65 (19) = happyShift action_29
action_65 (20) = happyShift action_30
action_65 (21) = happyShift action_31
action_65 (22) = happyShift action_32
action_65 (23) = happyShift action_33
action_65 (24) = happyShift action_34
action_65 (25) = happyShift action_7
action_65 (29) = happyShift action_8
action_65 (30) = happyShift action_9
action_65 (33) = happyShift action_10
action_65 (35) = happyShift action_11
action_65 (39) = happyShift action_12
action_65 (4) = happyGoto action_20
action_65 _ = happyReduce_21

action_66 (28) = happyShift action_68
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (7) = happyShift action_2
action_67 (8) = happyShift action_4
action_67 (9) = happyShift action_5
action_67 (10) = happyShift action_21
action_67 (11) = happyShift action_22
action_67 (12) = happyShift action_23
action_67 (13) = happyShift action_24
action_67 (14) = happyShift action_25
action_67 (15) = happyShift action_26
action_67 (16) = happyShift action_27
action_67 (17) = happyShift action_28
action_67 (18) = happyShift action_6
action_67 (19) = happyShift action_29
action_67 (20) = happyShift action_30
action_67 (21) = happyShift action_31
action_67 (22) = happyShift action_32
action_67 (23) = happyShift action_33
action_67 (24) = happyShift action_34
action_67 (25) = happyFail []
action_67 (29) = happyShift action_8
action_67 (30) = happyShift action_9
action_67 (33) = happyShift action_10
action_67 (35) = happyShift action_11
action_67 (39) = happyShift action_12
action_67 (4) = happyGoto action_20
action_67 _ = happyReduce_19

action_68 (31) = happyShift action_58
action_68 (32) = happyShift action_59
action_68 (5) = happyGoto action_66
action_68 _ = happyFail (happyExpListPerState 68)

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
		 (DivRest happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Potencia happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_2  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Not happy_var_2
	)
happyReduction_12 _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Eq happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Diff happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (MenoIngual happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Meno happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (MaioIngual happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  4 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Maio happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happyReduce 6 4 happyReduction_19
happyReduction_19 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_20 = happySpecReduce_1  4 happyReduction_20
happyReduction_20 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happyReduce 6 4 happyReduction_21
happyReduction_21 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_22 = happySpecReduce_2  4 happyReduction_22
happyReduction_22 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_22 _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  4 happyReduction_23
happyReduction_23 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happyReduce 6 4 happyReduction_24
happyReduction_24 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Create happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_25 = happySpecReduce_3  4 happyReduction_25
happyReduction_25 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (List happy_var_2
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  5 happyReduction_26
happyReduction_26 _
	 =  HappyAbsSyn5
		 (TBool
	)

happyReduce_27 = happySpecReduce_1  5 happyReduction_27
happyReduction_27 _
	 =  HappyAbsSyn5
		 (TNum
	)

happyReduce_28 = happySpecReduce_3  5 happyReduction_28
happyReduction_28 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (TFun happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_1  6 happyReduction_29
happyReduction_29 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn6
		 ([ happy_var_1 ]
	)
happyReduction_29 _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  6 happyReduction_30
happyReduction_30 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1 ++ [ happy_var_3 ]
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 42 42 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenTrue -> cont 7;
	TokenFalse -> cont 8;
	TokenNum happy_dollar_dollar -> cont 9;
	TokenAdd -> cont 10;
	TokenSub -> cont 11;
	TokenDiv -> cont 12;
	TokenDivRest -> cont 13;
	TokenPotencia -> cont 14;
	TokenMult -> cont 15;
	TokenAnd -> cont 16;
	TokenOr -> cont 17;
	TokenNot -> cont 18;
	TokenEq -> cont 19;
	TokenDiff -> cont 20;
	TokenMenoIngual -> cont 21;
	TokenMeno -> cont 22;
	TokenMaioIngual -> cont 23;
	TokenMaio -> cont 24;
	TokenIf -> cont 25;
	TokenThen -> cont 26;
	TokenElse -> cont 27;
	TokenArrow -> cont 28;
	TokenLam -> cont 29;
	TokenVar happy_dollar_dollar -> cont 30;
	TokenBoolean -> cont 31;
	TokenNumber -> cont 32;
	TokenCreate -> cont 33;
	TokenPonto -> cont 34;
	TokenOpenParenteses -> cont 35;
	TokenCloseParenteses -> cont 36;
	TokenReceba -> cont 37;
	TokenIn -> cont 38;
	TokenColcheteOpen -> cont 39;
	TokenColcheteClose -> cont 40;
	TokenSep -> cont 41;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 42 tk tks = happyError' (tks, explist)
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
