DOCNAME=jupyter-paper-sample
pdf: ${DOCNAME}.ipynb
	jupyter nbconvert --template revtex_nocode.tplx --to pdf ${DOCNAME}.ipynb --execute
tex: ${DOCNAME}.ipynb
	jupyter nbconvert --template revtex_nocode.tplx --to latex ${DOCNAME}.ipynb --execute
.PHONY: clean
clean:
	rm -rf ${DOCNAME}.tex ${DOCNAME}.pdf ${DOCNAME}.tex.aux ${DOCNAME}.fdb_latexmk ${DOCNAME}.fls ${DOCNAME}.log ${DOCNAME}.out ${DOCNAME}.synctex.gz ${DOCNAME}_files
