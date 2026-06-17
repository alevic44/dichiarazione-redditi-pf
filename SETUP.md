# Setup & Installazione

## Struttura Locale

Dopo il clone/download, avrai:

```
dichiarazione-redditi-pf-skill/
├── .claude/
│   └── skills/
│       └── dichiarazione-redditi-pf/
│           ├── skill.json           # Metadati skill
│           ├── run.sh               # Entry point
│           └── references/
│               ├── fascicolo1.md    # Guide ufficiali
│               ├── fascicolo2.md
│               ├── fascicolo3.md
│               └── precompilata.md
├── .claude-plugin/
│   └── manifest.json                # Metadata per marketplace
├── README.md
├── LICENSE
├── .gitignore
└── SETUP.md                         # Questo file
```

## Installazione

### Per Claude Code (Locale)

1. Clona o scarica questa repository
2. Copia la cartella `.claude/skills/dichiarazione-redditi-pf` nella tua cartella progetto:

   ```bash
   cp -r .claude/skills/dichiarazione-redditi-pf /path/to/your/project/.claude/skills/
   ```

3. Riavvia Claude Code
4. Digita `/dichiarazione-redditi-pf` nel prompt

### Per Pubblicare su Marketplace (GitHub)

1. Crea repo pubblico su GitHub: `dichiarazione-redditi-pf-skill`
2. Pushare il contenuto:

   ```bash
   git init
   git add .
   git commit -m "Initial commit: Dichiarazione Redditi PF 2026 Skill"
   git branch -M main
   git remote add origin https://github.com/[TUO_USERNAME]/dichiarazione-redditi-pf-skill.git
   git push -u origin main
   ```

3. Aggiungi descrizione GitHub:
   - **Descrizione**: "Skill per Claude Code: guida compilazione Modello REDDITI PF 2026"
   - **Topics**: `claude-code`, `skill`, `dichiarazione-redditi`, `fiscale`, `italia`

4. Contatta marketplace Claude per registrazione (processo in evoluzione)

## Uso Base

### Trigger Skill

```
/dichiarazione-redditi-pf Sono dipendente, ho una casa affittata e spese sanitarie. Che quadri mi servono?
```

### Modalità Interattiva

Lo skill entrerà in modalità triage:
- Farà poche domande sulla tua situazione
- Indicherà solo i quadri pertinenti
- Spiegherà ogni quadro in una frase

### Domanda Puntuale

```
/dichiarazione-redditi-pf Dove va il bonus mobili nel Modello REDDITI?
```

→ Ricerca rapida, rigo + spiegazione

## Requisiti

- **Claude Code** (ultima versione)
- **Bash** (per run.sh — funziona su macOS, Linux, WSL Windows)
- **Nessuna dipendenza esterna**

## Troubleshooting

### Skill non viene riconosciuto

1. Verifica `.claude/skills/dichiarazione-redditi-pf/skill.json` esista
2. Riavvia Claude Code
3. Verifica percorso assoluto: `.claude/skills/` nella root progetto

### File di riferimento non trovati

1. Controlla che `references/*.md` siano presenti
2. Verifica permessi di lettura: `chmod 644 references/*.md`

## Sviluppo Futuro

- [ ] Supporto PDF export
- [ ] Integrazione Agenzia Entrate API
- [ ] Modello 730 (semplificato)
- [ ] Localizzazione (EN, altri)

---

**Nota**: Questo skill usa guide ufficiali 2026. Aggiorna `references/` ogni anno con nuove istruzioni.
