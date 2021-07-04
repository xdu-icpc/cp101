STYFILES = beamerthemeXDUstyle.sty      \
		   beamercolorthemeXDUstyle.sty \
		   beamerinnerthemeXDUstyle.sty \
		   beamerouterthemeXDUstyle.sty \

OUTFILES = hw.out                  \
		   mod.out                 \
		   mod_bad.out             \
		   strlen-1.out            \
		   strlen-2.out            \

GENERATED = *.aux *.fdb_latexmk *.fls *.log *.nav *.out *.pdf *.snm *.toc \
			*.vrb

.PHONY: beamer
beamer: $(STYFILES)
	make -C code $(OUTFILES)
	latexmk --lualatex beamer

.PHONY: clean
clean:
	rm -fv $(GENERATED)
	make -C code clean

.PHONY: .gitignore
.gitignore:
	echo "$(GENERATED)" | sed 's/ /\n/g' > $@

$(STYFILES): theme/XDUstyle.dtx
	cd theme; xelatex XDUstyle.dtx
