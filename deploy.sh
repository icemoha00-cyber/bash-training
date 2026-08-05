#!/bin/bash
APP="mon-app"
VERSION="1.0"
LOG="deploy.log"

echo "[$(date)] Début du déploiement $APP v$VERSION" >> $LOG

if [ -f "journal.txt" ]; then
  echo "[$(date)] Fichier source trouvé." >> $LOG
  mkdir -p "releases/$VERSION"
  cp journal.txt "releases/$VERSION/"
  echo "[$(date)] Déploiement réussi !" >> $LOG
else
  echo "[$(date)] ERREUR : fichier source manquant." >> $LOG
  exit 1
fi

cat $LOG

