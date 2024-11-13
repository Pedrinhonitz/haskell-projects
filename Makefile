run-command:
	echo 'eval $$(typecheck $$(parser $$(lexer "? 6 > 5 ?! 5 + 2 | 1 + 1"))) ' | ghci Main.hs
	# echo 'eval $$(typecheck $$(parser $$(lexer "if 6 > 5 then 5 + 2 else 1 + 1"))) ' | ghci Main.hs

kn:
	@runghc Main.hs < $(file)