#!/bin/bash
# Author Andrea Noto
# Lì mo  9 Sep 2026
# Syntax obfuscate.sh file passphrase
#_________________
# Crea il file tmp
test ! -f "$1" && echo "File notte fonda"&&exit 1
test -z "$2" && echo "Pass phrase ?"&&exit 1
PASSFILE=$(mktemp .gpg-pass.XXXXXX)
chmod 600 "$PASSFILE"
#shift
passe=`echo "$*"|awk '{$1=""; sub(/^ /,""); print}'`
echo "$passe" > "$PASSFILE"

# Esegui la cifratura
gpg --batch --yes --pinentry-mode loopback \
    --passphrase-file "$PASSFILE" \
    -c $1

#  Rimuovi subito i files, commentare con # se desiderato
shred -u "$PASSFILE" $1
