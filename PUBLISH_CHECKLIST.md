# Checklist Pubblicazione GitHub

## Pre-GitHub

- [x] Struttura locale `.claude/skills/` creata
- [x] Skill con `skill.json`, `run.sh`, `references/` pronto
- [x] `manifest.json` per plugin marketplace
- [x] `README.md` con uso e features
- [x] `LICENSE` (MIT)
- [x] `.gitignore` configurato
- [x] `SETUP.md` con istruzioni installazione

## GitHub Setup

### 1. Crea Repository

```bash
# Sulla pagina GitHub.com
1. Clicca + → New Repository
2. Nome: dichiarazione-redditi-pf-skill
3. Descrizione: "Skill per Claude Code: Guida Modello REDDITI PF 2026"
4. Privato/Pubblico: PUBBLICO
5. ☐ Add README (saltare, abbiamo già il nostro)
6. ☐ Choose license (saltare, usiamo MIT locale)
7. Create Repository
```

### 2. Collega Locale → GitHub

```bash
cd /path/to/dichiarazione-redditi-pf-skill

git init
git add .
git commit -m "Initial commit: Dichiarazione Redditi PF 2026 Skill per Claude Code"

git branch -M main
git remote add origin https://github.com/[USERNAME]/dichiarazione-redditi-pf-skill.git
git push -u origin main
```

### 3. Configura Repository (su GitHub)

**Settings → General**
- Description: "Skill per Claude Code: Guida compilazione Modello REDDITI PF 2026"
- URL: https://github.com/[USERNAME]/dichiarazione-redditi-pf-skill
- Topics: `claude-code` `skill` `dichiarazione-redditi` `fiscale` `italy` `agenzia-entrate`

**Settings → Code and automation → Pages**
- ☐ Enable GitHub Pages (opzionale, per documentazione futura)

## Marketplace Claude Code

### Registrazione Skill (quando disponibile)

- Attendi disponibilità ufficiale marketplace
- Sottometti via: `claude marketplace submit`
- O contatta: skills-support@anthropic.com

### In attesa: Condividi Manualmente

1. **Linea comando diretta**:
   ```bash
   # Nel repo locale
   git clone https://github.com/[USERNAME]/dichiarazione-redditi-pf-skill.git
   cd dichiarazione-redditi-pf-skill
   cp -r .claude/skills/dichiarazione-redditi-pf ~/.claude/skills/
   ```

2. **Annuncia su**:
   - 🐦 Twitter: #ClaudeCode #Tax #Skill #Italian
   - 📧 Email: amici, colleghi, forum fiscali
   - 💬 Reddit: r/ItaliaPersonalFinance

## Manutenzione

### Ogni Anno (prossima stagione fiscale)

```
- [ ] Aggiorna references/ con nuovi fascicoli Agenzia Entrate
- [ ] Aggiorna versione skill.json: "version": "2025.1.0"
- [ ] Testa con nuovi fascicoli
- [ ] Commit: "Update 2025 tax references"
- [ ] GitHub Release: v2025.1.0
```

### Issue & Feedback

- [ ] Abilita GitHub Issues
- [ ] Crea issue template per:
  - Bug report
  - Feature request
  - Domande

### Documentazione

- [ ] Considera docsite futura (Docusaurus, MkDocs)
- [ ] FAQ section in README

---

## Status

**Locale**: ✅ Pronto
**GitHub**: ⏳ Da fare (qui sopra)
**Marketplace Claude**: ⏳ In attesa disponibilità

**Next Step**: Eseguire sezione "GitHub Setup" quando pronto a pubblicare.
