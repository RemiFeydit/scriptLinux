if [ ! -d "/scriptLinux/music" ]
then
    echo "Création fichier musicScript"
    mkdir ~/scriptLinux/musicScript 2> /dev/null
fi
echo "Vérification des mises à jour"
sudo youtube-dl -U
echo "Veuillez rentrer l'url youtube de la musique voulu :"
read url
youtube-dl -x --audio-format mp3 -o "~/scriptLinux/musicScript/%(title)s.%(ext)s" $url 2> /dev/null
