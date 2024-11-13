run-command:
	echo 'eval $$(typecheck $$(parser $$(lexer "5 >= 5"))) ' | ghci Main.hs
	echo 'eval $$(typecheck $$(parser $$(lexer "5 >= 6"))) ' | ghci Main.hs
	echo 'eval $$(typecheck $$(parser $$(lexer "6 >= 5"))) ' | ghci Main.hs

kn:
	@runghc Main.hs < $(file)