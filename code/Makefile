all:
	@echo "usage: $(MAKE) something.out"

%.out: %.sh %.cc gen.py
	./gen.py $< $@

GENERATED = *.gcda *.gcno *.gcov *.out *.s *.exe *.in *.o

.PHONY: .gitignore
.gitignore:
	echo "$(GENERATED)" | sed 's/ /\n/g' > $@

.PHONY: clean
clean:
	rm -fv $(GENERATED)
