## Structure générale

Les questions de Khôlles de chaque semaine sont dans le dossier /Sem_${numéro}

## Utiliser kholles.sty

Simplement, commence son document LaTeX par
	\documentclass{article}
	
	\usepackage{../kholles}
	
	\begin{document}
	\maketitle

Ensuite, utlise l'environnement fait maison.
	\begin{question_kholle}
		[commentaire sur la question]
		{la question complète}
	
	La démonstration
	
	\end{question_kholle}
Le commentaire est facultatif.

Et voilà !
