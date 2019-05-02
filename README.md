# Script Linux

## Jeu du plus ou moins

### But du script

Le script doit lancer un jeu qui demande à l'utilisateur de trouver un nombre compris en 0 et 1000, pour cela le script dira à l'utilisateur si le nombre qu'il a rentré est `Plus grand` ou `Plus petit` par rapport au nombre à trouver.
Le script devra aussi gérer les erreurs, si l'utilisateur ne rentre pas de chiffres, ou si il rentre un caractère qui n'est pas un chiffre.

### Comment lancer le script ?

Pour lancer le jeu, utilisez le fichier `premierscript.sh`.

### Contenu du script

Le script comprends le jeu fonctionnel, le nombre de tentatives pour gagner, ainsi qu'une gestion d'erreur si une proposition n'est pas un nombre.
La gestion d'erreur ne se fait que sur une seule erreur, si 2 erreurs sont commises à la suite le script s'arrêtera.

### Comment j'ai testé le script ?

J'ai simulé une partie en tant qu'utilisateur, et faisait exprès de faire des fautes (entrée vide et entrée avec caractère) et une partie ou je testais de trouver le bon nombre.

## Un outil de sauvegarde

### But du script

Un script de sauvegarde commande `tar` d'une sous arborescence passé en argument en effectuant une sauvegarde `full` le `vendredi` et des `sauvegardes incrémentals` `les autres jours` sans utiliser l'argument --update de la commande `tar`

### Comment lancer le script ?

Pour lancer le script, utilisez le fichier `deuxiemescript.sh`.

### Contenu du script

Le script détecte la date du jour et fais une sauvegarde full lorsqu'on est `vendredi` et affiche `incré` les autres jours.

### Comment j'ai testé le script ?

Pour tester mon script, j'ai remplacé ma valeur `$DAY` par `ven.`, pour voir si mon test fonctionnait.

## youtube-dl

### But du script

Le script a pour but de télécharger une vidéo en format mp3 (juste le son) grâce à une url fourni par l'utilisateur.

### Comment lancer le script

Pour lancer le script, il faut tout d'abord télécharger `youtube-dl`
Pour cela tapez dans votre terminal :
```bash
sudo wget https://yt-dl.org/latest/youtube-dl -O /usr/local bin/youtube-dl
```
Puis :
```bash
sudo chmod a+x /usr/local/bin/youtube-dl
```
Et pour finir :
```bash
hash -r
```

Pour lancer le script, utilisez le fichier `troisiemescript.sh`.

### Contenu du script

Le script créé un dossier `musicScript` si il n'existe pas, regarde si des mises à jours de `youtube-dl`sont disponibles, puis demande à l'utilisateur de rentrer une url puis télécharge l'url de la vidéo en format `.webm`, et nomme le fichier avec un format préféfini dans le code.

### Comment j'ai testé le script ?

Pour tester le script, j'ai juste similé être l'utilisateur et ait rentré une URL quand le script le demandait, et si ma vidéo se téléchargeait, cela voulait dire que le script fonctionnait.
Et pour la création du dossier, j'ai juste testé la création du dossier lorsqu'il y en avait pas et si le dossier se crééait quand même si il existait déjà.
