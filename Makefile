STYFILES = beamerthemeXDUstyle.sty      \
		   beamercolorthemeXDUstyle.sty \
		   beamerinnerthemeXDUstyle.sty \
		   beamerouterthemeXDUstyle.sty \

OUTFILES = hw.out                   \
		   mod.out                  \
		   mod_bad.out              \
		   strstr.out               \
		   strlen-1.out             \
		   strlen-2.out             \
		   set_invalidate.out       \
		   vec_invalidate.out       \
		   feenableexcept.out       \
		   matrix_bug.out           \
		   pow_mod_bug.out          \
		   overflow.out             \
		   scanf_bound.out          \
		   scanf_bound_asan.out     \
		   vec_invalidate_debug.out \
		   bsearch_buggy.out        \
		   bapc2018e-time.out       \
		   bapc2018e-gcov.out       \
		   bapc2018e-gprof.out

GENERATED = *.aux *.fdb_latexmk *.fls *.log *.nav *.out *.pdf *.snm *.toc \
			*.vrb

.PHONY: beamer
beamer: $(STYFILES)
	make -C code $(OUTFILES)
	latexmk --lualatex beamer

.PHONY: exercise
exercise:
	make -C exercise t.pdf

.PHONY: beamer-recitation
beamer-recitation:
	latexmk --lualatex beamer-recitation

.PHONY: clean
clean:
	rm -fv $(GENERATED)
	make -C homework clean
	make -C code clean

.PHONY: .gitignore
.gitignore:
	echo "$(GENERATED)" | sed 's/ /\n/g' > $@

$(STYFILES): theme/XDUstyle.dtx
	cd theme; xelatex XDUstyle.dtx
