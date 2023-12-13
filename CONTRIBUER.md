## Structure générale

Les questions de Khôlles de chaque semaine sont dans le dossier /Sem_\${numéro}/Kholle_S\${numéro}.

## Utiliser kholles.sty

Simplement, commencez votre document LaTeX par

```latex
\documentclass{article}

\date{date à modifier à chaque ajout}
\usepackage[nb-sem=numéro, auteurs={les auteurs}]{../kholles}

\begin{document}

\maketitle
```

Ensuite, utlise l'environnement fait maison.

```latex
\begin{question_kholle}
    [la question si elle est longue ou un commentaire sur la question]
    {la question courte ou le nom de la formule démontré}

    La démonstration

\end{question_kholle}
```

Le commentaire est facultatif. Pensez à la lisibilité du titre : il doit être court.

Et voilà !!!
