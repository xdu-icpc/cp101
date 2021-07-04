make -C code                \
	hw.out                  \
	mod.out                 \
	mod_bad.out             \
	strlen-1.out            \
	strlen-2.out            \
&&

latexmk --lualatex beamer
