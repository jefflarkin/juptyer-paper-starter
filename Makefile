pdf: jupyter-paper-sample.ipynb
	jupyter nbconvert --template revtex_nocode.tplx --to pdf jupyter-paper-sample.ipynb --execute
tex: jupyter-paper-sample.ipynb
	jupyter nbconvert --template revtex_nocode.tplx --to latex jupyter-paper-sample.ipynb --execute
.PHONY: clean
clean:
	rm -f jupyter-paper-sample.tex jupyter-paper-sample.pdf
