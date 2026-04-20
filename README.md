# Meeting Intelligence 🎙

> Trasforma ogni riunione in una mind map animata in tempo reale.  
> Powered by **Groq** (Whisper + Llama 3.3 70B) — gratuito, zero installazioni.

---

## Demo live

Una volta pubblicato su GitHub Pages, l'app sarà raggiungibile su:

```
https://<tuo-username>.github.io/<nome-repository>/
```

---

## Setup in 5 minuti

### 1. Ottieni la Groq API Key (gratis)

1. Vai su [console.groq.com](https://console.groq.com)
2. Crea un account (nessuna carta richiesta)
3. **API Keys → Create API Key**
4. Copia la chiave — inizia con `gsk_`

### 2. Carica su GitHub

#### Metodo A — Interfaccia web (più semplice)

1. Vai su [github.com](https://github.com) e crea un nuovo repository  
   - Nome consigliato: `meeting-intelligence`  
   - Visibilità: **Public** (obbligatorio per GitHub Pages gratuito)
2. Clicca **uploading an existing file**
3. Trascina tutti i file di questa cartella (`index.html`, `_config.yml`, `README.md`)
4. Clicca **Commit changes**

#### Metodo B — Git da terminale

```bash
cd meeting-intelligence
git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/<tuo-username>/<nome-repo>.git
git push -u origin main
```

### 3. Abilita GitHub Pages

1. Nel repository, vai su **Settings → Pages**
2. Source: **Deploy from a branch**
3. Branch: **main** / `/ (root)`
4. Clicca **Save**

Dopo 1-2 minuti l'app è live su `https://<username>.github.io/<repo>/`

---

## Come si usa

1. Apri l'URL GitHub Pages in **Chrome o Edge** (richiesto per Speech Recognition)
2. Clicca **⚙** e inserisci la tua Groq API Key
3. Modalità **Live**: clicca il pulsante circolare per avviare la registrazione
4. Modalità **Upload Audio**: carica un file mp3/mp4/wav/m4a registrato in precedenza

---

## Funzionalità

| Feature | Descrizione |
|---|---|
| 🗺 Mind Map live | Nodi colorati per importanza (🟠 critico · 🔵 medio · 🟣 nota) |
| ✍️ Sketch narrativo | Momento di svolta → schermata cinematografica per il cliente |
| 📋 Insights sidebar | Tutti i punti chiave estratti automaticamente |
| ✅ Next Steps | Azioni concrete emergono man mano |
| 📁 Upload file | Trascrizione Whisper large-v3 + analisi post-riunione |
| 🌍 Multilingua | IT · EN · FR · DE · ES · PT |

---

## Limiti Groq free tier

| Limite | Valore |
|---|---|
| Richieste/giorno | 1.000 |
| Token/minuto | 6.000 |
| Velocità | 300+ token/sec |

Per una riunione da 1 ora si consumano ~50-80 richieste — abbondantemente nella quota giornaliera.

---

## Privacy

- La Groq API Key viene salvata **solo nella memoria del browser** (sessionStorage), non su server
- L'audio non viene mai inviato a server esterni tranne Groq per la trascrizione
- Nessun dato viene conservato dopo la chiusura della tab

---

## Troubleshooting

**Il microfono non parte**  
→ Assicurati di usare Chrome o Edge  
→ L'app deve essere aperta su HTTPS (GitHub Pages lo fornisce automaticamente)  
→ Controlla Impostazioni sito → Microfono → Consenti

**Errore 401 Groq**  
→ La API key è errata o scaduta — rigenera da console.groq.com

**Errore 429 Groq**  
→ Hai superato il rate limit — aspetta 1 minuto e riprova

---

## Stack tecnico

- **Frontend**: HTML/CSS/JS vanilla — zero dipendenze, zero build step
- **Trascrizione**: Groq Whisper large-v3
- **AI Analysis**: Groq Llama 3.3 70B Versatile
- **Speech-to-text live**: Web Speech API (browser nativo)
- **Hosting**: GitHub Pages (statico, HTTPS automatico)
