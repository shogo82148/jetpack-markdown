PHPSRC=$(shell git ls-files '*.php')

.PHONY: pot
pot: languages/jetpack.pot

languages/jetpack.pot: $(PHPSRC)
	xgettext -k"__" -k"_e" -k"_n" -o $@ $(PHPSRC)

languages/jetpack-ja.mo: languages/jetpack-ja.po
	msgfmt $< -o $@
