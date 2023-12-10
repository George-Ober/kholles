## Structure générale

Les questions de Khôlles de chaque semaine sont dans le dossier /Sem_${numéro}/Kholle_S${numéro}.

## Utiliser kholles.sty

Simplement, commence son document LaTeX par

	\documentclass{article}

	\date{date à modifier à chaque ajout}
	\usepackage[auteurs={les auteurs}]{../kholles}

	\begin{document}

	\maketitle

Ensuite, utlise l'environnement fait maison.

	\begin{question_kholle}
		[la question si elle est longue ou un commentaire sur la question]
		{la question courte ou le nom de la formule démontré}

	La démonstration

	\end{question_kholle}

Le commentaire est facultatif. Pense à la lisibilité du titre : il doit être court.

Et voilà !
