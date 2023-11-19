# Automatise la compilation des fichiers .tex

compiler := pdflatex
nb_weeks = $(shell ls -d Sem_* | sed 's/Sem_//g')

all :
	@cat begin_kholles.tex > Khôlles_Mathématiques.tex
	@for w in ${nb_weeks}; do \
		cd Sem_$$w; \
		pdflatex -synctex=1 -interaction=nonstopmode Kholle_S$$w.tex > /dev/null; \
		echo ; \
		sed -e '/\\documentclass/,/\\maketitle/d' -e '/\\end{document}/,//d' Kholle_S$$w.tex >> ../Khôlles_Mathématiques.tex; \
		cd ..; \
		echo $$w done; \
	done
	@cat end_kholles.tex >> Khôlles_Mathématiques.tex
	pdflatex -synctex=1 -interaction=nonstopmode Khôlles_Mathématiques.tex > /dev/null
