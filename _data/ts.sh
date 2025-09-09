#!/bin/bash

INPUT="machines.txt"
OUTPUT="machines.yml"

[ -f "$INPUT" ] || { echo "Fichier $INPUT introuvable."; exit 1; }

# Crée le fichier s'il n'existe pas, sinon ajoute à la fin
[ -f "$OUTPUT" ] || echo "---" > "$OUTPUT"
echo "" >> "$OUTPUT"
echo "# Proving Grounds Labs| ajouté le $(date)" >> "$OUTPUT"

while IFS="|" read -r PLATFORM OS MACHINE DIFFICULTY; do
  [[ -z "$MACHINE" ]] && continue

  # Nettoyer les espaces
  PLATFORM=$(echo "$PLATFORM" | xargs)
  OS=$(echo "$OS" | xargs)
  MACHINE=$(echo "$MACHINE" | xargs)
  DIFFICULTY=$(echo "$DIFFICULTY" | xargs)

  cat <<EOL >> "$OUTPUT"
- name: "$MACHINE"
  platform: "$PLATFORM"
  os: "$OS"
  difficulty: "$DIFFICULTY"
  writeup: ""
  todo: "0/2"

EOL

done < "$INPUT"

echo "✅ Proving Grounds Labs exporté dans $OUTPUT"
