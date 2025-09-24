# Batch Downloader avec `gallery-dl`

Le script parcourt ta liste d’URLs (dans ton fichier .txt) et lance automatiquement  [`gallery-dl`](https://github.com/mikf/gallery-dl) pour chacune d’elles. Pas besoin de taper les commandes une par une :)
Rien de fifou, posté ici pour la facilité
---

## Prérequis

- **Python 3.x** 
- [`gallery-dl`](https://github.com/mikf/gallery-dl) installé :  

```bash
pip install gallery-dl
```
### Exemple:
```bash
./dl_script.sh urls.txt
```
```bash
>>> Téléchargement depuis: https://www.deviantart.com/someartist
>>> Téléchargement depuis: https://twitter.com/someaccount 
```

### Tips :
faire un log des DL 
```bash
./dl_script.sh urls.txt | tee download.log
```

#### Pourquoi -R -1 ? (fallait lire la doc mais je suis symmpa)
	•	-R indique le nombre de tentatives en cas d’échec (timeout, erreur réseau, etc.)
	•	-1 signifie illimité : le script réessaiera autant de fois que nécessaire jusqu’à ce que le téléchargement réussisse.
  
wala rien de fou comme dit plus haut 
