# Bonjour

Nous sommes peu à écrire les questions de khôlles alors *merci beaucoup* de contribuer. Tu peux simplement nous faire remarquer les fautes d'autographe, les raisonnements trop rapides, des idées pour améliorer ou autre. Si tu veux écrire toi-même les questions de khôlles, lis la suite.

# Structure générale

Dans le [README](README.md), les semaines cochées sont celles qui sont terminées !

Les questions de khôlles de chaque semaine sont dans le fichier `Sem_\${numéro}/Kholle_S\${numéro}.tex`. Par exemple, `Sem_12/Kholle_S12.tex`.

Lors des pull request ou des push, il n'est pas nécessaire de d'ajouter le .pdf compilé. Il faut seulement modifier le fichier .tex et la compilation est automatique.

# Utiliser kholles.sty

Simplement, commence votre document LaTeX par

```latex
\documentclass{article}

\date{date à modifier à chaque ajout(jour mois année)}
\usepackage[nb-sem=numéro, auteurs={les auteurs}]{../kholles}

\begin{document}
    \maketitle
```

Ensuite, utilise l'environnement fait maison.

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

- **L'environnement propositions** pour lister des propositions (bah oui) avec \item et **l'environnement liste** pour faire une liste (waouh) de points

- Les **ensembles usuels** \N, \Z, \Q, R, \C, \K, \PRIME, \cx{corps} pour

- L'**ensemble des solutions** \Sol

- Les **parties réelle et imaginaire** \Re et \Im

- Les **relations binaires** \Rel

- Les **limites** \arrowlim{variable}{limite}, \textlim{variable}{limite} *par exemple, u_n \arrowlim{n}{+\infty} 42*

- Les **lettres utiles** \eps pour \varepsilon, \ph pour \varphi, \bda pour \lambda, et \e pour la constante d'Euler

- Les **nombres entiers** \lient pour ouvrir un intervalle d'entier et \rient pour le fermer

- Les **ensembles pour la régularité des fonctions** \Cont{nombre ou l'infini}{départ}{arrivée}, \Deriv{nombre ou l'infini}{départ}{arrivée}, \ContU{départ}{arrivée} et \ContM{départ}{arrivée} (départ et arrivée sont facultatif, par exemple \Cont{\infty}{}{} ou \Deriv{1}{I}{})

- La **norme infinie** \norminf[ensemble]{fonction} (usuellement, \norminf{f})

- Les **espaces vectoriels** \Vect pour l'acronyme de "sous-espace vectoriel engendré par", \ev[corps] pour "corps-espace vectoriel" (le corps est facultatif), \evs pour le pluriel, \sev pour 'sous-espace vectoriel', \sevs au pluriel, \rg pour rg  (en mode math) (le rang d'une application linéaire)

- Les **familles** quelconques \famille[variable muette(i par défaut)]{nom de la famille}{ensemble indexant} ( \famille[k]{\sigma}{[\\![0;n]\\!]} pour les fonctions symétriques élémentaires ), presque nulles \fpnulle[ensemble indexant (facultatif)]{nom de la famille}{ensemble de base} (par exemple \famille{\lambda}{E} pour une famille de vecteurs de E) et finies \ffinie[variable muette]{nom de la famille}{nombre d'éléments}{ensemble de base}

- Les **probabilités** \proba pour le P majuscule d'une probabilité, \esp pour le E majuscule de l'espérance et \variance pour le V majuscule de la variance

- Pour les **flemmards**, \fq pour 'fixé quelconque' et \tq pour 'tel que' (ajouter '+' pour le féminin puis '\*' pour le pluriel, par exemple, \fq+* pour 'fixées quelconques', \tq* pour 'tels que'); \ssi pour 'si et seulement si', \ii pour `_{i \in I}`, \bdak pour `(\lambda_i)_{i\in I}\in \mathbb{K}^{(I)}}`

- Si il manque des questions, la commande \setnbquestion{} permet de fixer manuellement le **numéro de la question**.

- L'environnement question_kholle_remarque permet d'ajouter une remarque à la fin de la question de khôlle.

- L'environnement question_kholle_remarque permet d'ajouter une remarque à la fin de la question de khôlle.

Et voilà !!!

# Compilation

Sur *Linux*, taper dans votre console à la racine du projet :

```shell
$: make
```
