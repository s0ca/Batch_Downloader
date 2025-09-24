#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 fichier_urls.txt"
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "Erreur: fichier '$1' introuvable."
    exit 1
fi

while IFS= read -r url; do
    [ -z "$url" ] && continue

    echo ">>> Téléchargement depuis: $url"
    python3 -m gallery_dl -R -1 "$url"
done < "$1"
