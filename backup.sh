mkdir -p backup
cp *.txt backup/
echo "$(ls backup/ | wc -l) fichier sauvegardés dans backup/"

