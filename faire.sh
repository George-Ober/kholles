#!/bin/bash

# Afficher une barre de progres
afficher_barre() {
    local progres=$(( $1 * 100 / $2 ))
    local complete=$(( $progres / 2 ))
    local reste=$(( 50 - complete ))
    local semaine=$(($3))
    printf "\r["
    printf "%${complete}s" "#" | tr ' ' '#'
    printf "%${reste}s" " "
    printf "] %d %% Semaine %d    " "$progres" "$semaine"
}


nettoyage() {
    echo ""
    echo "Désolé de vous avoir forcé à appuyer sur entrée après le Ctrl+C"
    exit 1
}

trap nettoyage SIGINT

# Trouver tous les répertoires avec "Sem_<NUMERO>"
repertoires=$(find . -type d -name "Sem_*")
nombre_total=$(echo "$repertoires" | wc -l)
actuel=0
echo "Faire Ctrl+C puis entrée pour arrêter le programme (j'ai pas touvé comment interrompre pdflatex)"


for reper in $repertoires; do
    ((actuel++))
    
    # Extraire le numéro du nom du répertoire (beurk RegEx)
    numero=$(echo "$reper" | sed 's/.*Sem_//')
    
    cd "$reper" || continue    

    pdflatex "Kholle_S$numero.tex" > /dev/null 2>&1
    
    cd - > /dev/null
    
    afficher_barre "$actuel" "$nombre_total" "$numero"
done

echo ""
echo "Toutes les semaines ont été compilées"
