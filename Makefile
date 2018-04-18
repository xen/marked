all:
	@cp lib/markedtg.js markedtg.js
	@uglifyjs --comments '/\*[^\0]+?Copyright[^\0]+?\*/' -o markedtg.min.js lib/markedtg.js

clean:
	@rm markedtg.js
	@rm markedtg.min.js

bench:
	@node test --bench

man/markedtg.1.txt:
	groff -man -Tascii man/markedtg.1 | col -b > man/markedtg.1.txt

.PHONY: clean all
