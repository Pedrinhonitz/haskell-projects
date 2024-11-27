run-command:
	echo 'eval $$(typecheck $$(parser $$(lexer "5 >= 5"))) ' | ghci Main.hs
	echo 'eval $$(typecheck $$(parser $$(lexer "5 >= 6"))) ' | ghci Main.hs
	echo 'eval $$(typecheck $$(parser $$(lexer "6 >= 5"))) ' | ghci Main.hs

kn:
	@runghc Main.hs < $(file)



debug:
	echo 'eval $$(typecheck $$(parser $$(lexer "6 >= 5"))) ' | ghci Main.hs
	echo 'eval $$(typecheck $$(parser $$(lexer "5 == 5"))) ' | ghci Main.hs
	echo 'eval $$(typecheck $$(parser $$(lexer "4 <= 5"))) ' | ghci Main.hs
	echo 'eval $$(typecheck $$(parser $$(lexer "2 + 5"))) ' | ghci Main.hs
	echo 'eval $$(typecheck $$(parser $$(lexer "5 - 5"))) ' | ghci Main.hs
	echo 'eval $$(typecheck $$(parser $$(lexer "5 * 1"))) ' | ghci Main.hs
	echo 'eval $$(typecheck $$(parser $$(lexer "5 *|* 5"))) ' | ghci Main.hs
	echo 'eval $$(typecheck $$(parser $$(lexer "5 *%* 5"))) ' | ghci Main.hs
	echo 'eval $$(typecheck $$(parser $$(lexer "5 != 5"))) ' | ghci Main.hs
	echo 'eval $$(typecheck $$(parser $$(lexer "5 *%* 2"))) ' | ghci Main.hs
	echo 'eval $$(typecheck $$(parser $$(lexer "2 ^ 5"))) ' | ghci Main.hs
	echo 'eval $$(typecheck $$(parser $$(lexer "? 1 == 1 ?! 2 + 1 | 2 + 4")))' | ghci Main.hs
	echo 'eval $$(typecheck $$(parser $$(lexer "[1, 2, 3]")))' | ghci Main.hs

lambda:
	echo 'eval $ typecheck $ parser $ lexer $ "(-\\ x : Num -> x + 3) 2"' | ghci Main.hs