# Structure générale

Dans le [README](README.md), les semaines cochées sont celles qui sont terminées !

Les questions de Khôlles de chaque semaine sont dans le fichier `Sem_\${numéro}/Kholle_S\${numéro}.tex`. Par exemple, `Sem_12/Kholle_S12.tex`.

# Utiliser kholles.sty

Simplement, commencez votre document LaTeX par

```latex
\documentclass{article}

\date{date à modifier à chaque ajout(jour mois année)}
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

Par exemple,

```latex
\documentclass{article}

\date{1905}
\usepackage[nb-sem=42, auteurs={Albert Einstein}]{../kholles}

\begin{document}
    \maketitle

    \begin{question_kholle}
        [$$E = m c^2$$]
        {Lien entre masse et énergie}

        Écoutez les équations !

    \end{question_kholle}


\end{document}
```

`kholles.sty` définit aussi des commandes sympas :

- **L'environnement propositions** pour lister des propositions (bah oui) avec \item

- Les **ensembles usuels** \N, \Z, \Q, R, \C, \K, \PRIME

- L'**ensemble des solutions** \Sol

- Les **parties réelle et imaginaire** \Re et \Im

- Les **relations binaires** \Rel

- Les **limites** \arrowlim{varaible}{limite}, \textlim{variable}{limite} *par exemple, u_n \arrowlim{n}{+\infty} 42*

- Les **lettres utiles** \eps pour \varepsilon, \ph pour \varphi, \bda pour \lambda, et \e pour la constante d'Euler

- Les **ensembles pour la régularité des fonctions** \Cont{nombre ou l'infini}{départ}{arrivée} et \Deriv (départ et arrivée sont facultatif, par exemple \Cont{\infty}{}{} ou \Deriv{1}{I}{})

- Les **espaces vectoriels** \Vect pour l'accronyme de "sous-espace vectoriel engendré par", \ker pour noyau, \sev pour 'sous-espace vectoriel', \sevs au pluriel

- Les **familles** quelconques \famille[variable muette]{nom de la famille}{ensemble indexant} ( \famille[k]{\sigma}{[\\![0;n]\\!]} por les fonctions symétriques élémentaires ), presque nulles \fpnulle[ensemble indexant (facultatif)]{nom de la famille}{ensemble de base} (par exemple \famille{\lambda}{E} pour une famille de vecteurs de E) et finies \ffinie[variable muette]{nom de la famille}{nombre d'éléments}{ensemble de base}

- Pour les flemmards, \fq pour 'fixé quelconque', \fqs pour 'fixés quelconques', \tq pour 'tel que' et \tqs pour '\tels que', \ssi pour 'si et seulement si', \ii pour `_{i \in I}`, \bdak pour `(\lambda_i)_{i\in I}\in \mathbb{K}^{(I)}}`

Et voilà !!!

# Compilation

Sur *Linux*, taper dans votre console à la racine du projet :

```shell
$: make
```
