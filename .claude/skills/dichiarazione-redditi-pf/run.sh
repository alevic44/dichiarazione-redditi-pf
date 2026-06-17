#!/bin/bash

# Skill: dichiarazione-redditi-pf
# Assiste i cittadini nella compilazione della dichiarazione dei redditi italiana

# Ottieni il prompt da stdin
read -r PROMPT

# Directory skill
SKILL_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REFERENCES_DIR="$SKILL_DIR/references"

# Construisci il contesto con i file di riferimento
CONTEXT=""
if [ -d "$REFERENCES_DIR" ]; then
  for file in "$REFERENCES_DIR"/*.md; do
    if [ -f "$file" ]; then
      FILENAME=$(basename "$file")
      CONTEXT+="
---
## File: $FILENAME
\`\`\`
$(head -c 5000 "$file")
...
\`\`\`
"
    fi
  done
fi

# Invia a Claude con context
cat << EOF
SKILL: dichiarazione-redditi-pf
VERSIONE: 1.0.0

PROMPT UTENTE:
$PROMPT

CONTESTO DISPONIBILE:
$CONTEXT

ISTRUZIONI:
- Consulta i file di riferimento per rispondere accuratamente
- Parla in linguaggio semplice, senza gergo tecnico non spiegato
- Se non trovi l'informazione nei file, dillo e suggerisci il portale dell'Agenzia
- Una cosa alla volta, procedi con pochi passi
EOF
