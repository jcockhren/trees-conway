.PHONY: all

all: trees.pdf


%.pdf: %.tex $(DEPENDS)
	rubber -f --pdf -s $<
	rubber-info --check $<

clean:
	rm -rf *.aux *.log *.pdf *.out
