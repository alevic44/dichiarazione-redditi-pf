# Dichiarazione dei Redditi PF 2026 — Skill per Claude Code

Skill specializzato per assistere i cittadini italiani nella compilazione del **Modello REDDITI Persone Fisiche 2026** dell'Agenzia delle Entrate.

## Funzionalità

- **Triage**: Identificare quali quadri compilare in base alla situazione personale (dipendente, affitti, partita IVA, ecc.)
- **Guida quadro-per-quadro**: Compilazione rigo per rigo con linguaggio semplice
- **Domande puntuali**: "Dove inserisco questa spesa?", "In che rigo va?"
- **Flusso digitale**: Come accedere, accettare, inviare la dichiarazione precompilata

## Basato su

Istruzioni ufficiali 2026:
- Fascicolo 1: Dichiarazioni, familiari, redditi fondiari e da capitale
- Fascicolo 2: Redditi di società, investimenti esteri, redditi particolari
- Fascicolo 3: Lavoro autonomo, imprese, attività agricole
- Guida precompilata: Accesso, SPID/CIE, deleghe, invio

## Installazione

### Opzione 1: Da Marketplace (quando disponibile)

```bash
claude marketplace install dichiarazione-redditi-pf
```

### Opzione 2: Da Repository GitHub

```bash
git clone https://github.com/alessiovc/dichiarazione-redditi-pf-skill.git
# Segui le istruzioni di installazione locale
```

### Opzione 3: Copia manuale

Copia la cartella `.claude/skills/dichiarazione-redditi-pf` nel tuo progetto:

```
project/
└── .claude/
    └── skills/
        └── dichiarazione-redditi-pf/
```

## Uso

### Interattivo (dopo attivazione come skill)

```
/dichiarazione-redditi-pf
> Sono dipendente e ho una casa data in affitto. Che quadri mi servono?
```

### Domanda rapida

```
> Spiegami il quadro RP (detrazioni) come fosse un bambino di 5 anni
```

## Principi di Design

1. **Linguaggio semplice**: Niente gergo non spiegato
2. **Accuratezza garantita**: Tutte le informazioni verificate nei fascicoli ufficiali
3. **Una cosa alla volta**: Procedi a piccoli passi
4. **Non è un commercialista**: Per casi complessi, rimanda a CAF o professionisti

## Supporto

- 🐛 Bug: [GitHub Issues](https://github.com/alessiovc/dichiarazione-redditi-pf-skill/issues)
- 💬 Domande: Apri una discussion
- 📧 Email: alessio.vicario98@gmail.com

## License

MIT — Vedi [LICENSE](./LICENSE)

---

**Disclaimer**: Questo skill fornisce orientamento educativo basato sulle guide ufficiali 2026. Non è sostitutivo di consulenza fiscale professionale. L'utente rimane responsabile della correttezza della dichiarazione presentata.
