GENERATED = *.aux *.fdb_latexmk *.fls *.log *.nav *.out *.pdf *.snm *.toc \
			*.vrb

.PHONY: exercise.pdf
exercise.pdf:
	latexmk --lualatex exercise

.PHONY: clean
clean:
	rm -fv $(GENERATED)

.PHONY: .gitignore
.gitignore:
	echo "$(GENERATED)" | sed 's/ /\n/g' > $@
