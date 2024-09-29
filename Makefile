# Automatise la compilation des fichiers .tex
# Auteur : Hugo Vangilluwen

compiler := pdflatex
nb_weeks = $(shell ls -d Sem_* | sed 's/Sem_//g' | sort -n)
files_weeks = $(foreach nb, ${nb_weeks}, Sem_${nb}/Kholle_S${nb})
pdf_ouput = $(foreach f, ${files_weeks}, ${f}.pdf)
sources_tex = $(foreach f, ${files_weeks}, ${f}.tex)
final_output := Khôlles_Mathématiques.tex
final_pdf := $(subst tex, pdf, ${final_output})

all : ${final_output}

${final_output} : ${pdf_ouput}
	@echo Écriture du fichier ${final_output} ...
	@cat begin_kholles.tex > ${final_output}
	@for nb in ${nb_weeks}; do \
		echo '\pagebreak\section{Semaine '`echo $$nb | sed 's/^0*//'`'}' >> ${final_output}; \
		sed -e '/\\documentclass/,/\\maketitle/d' -e '/\\end{document}/,//d' Sem_$${nb}/Kholle_S$${nb}.tex >> ${final_output}; \
	done
	@cat end_kholles.tex >> ${final_output}
	pdflatex -synctex=0 -draftmode -interaction=batchmode ${final_output} > /dev/null
	pdflatex -synctex=1 -interaction=batchmode ${final_output}

%.pdf : %.tex
	cd $$(dirname $<) && pdflatex -synctex=1 -interaction=nonstopmode $$(basename $<) > /dev/null

.PHONY : clean

to_clean := *.log *.aux *.out *.gnuplot *.fls *.synctex.gz *.toc *.fdb_latexmk *.bak[0-9]*
clean :
	rm -f ${to_clean}
	for folder in $(shell ls -d -- */); do \
		cd $${folder} && rm -f ${to_clean} && cd ..; \
	done
