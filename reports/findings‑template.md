# Firefox Audit Findings

## Zusammenfassung

| ID | Kategorie                | Erwartet | Beobachtet | Status | Risiko |
|----|-------------------------|----------|------------|--------|--------|
| FF‑01 | HTTPS‑Only Mode        | Aktiviert | Deaktiviert | ✘ | Hoch |
| FF‑03 | Form Autofill          | Disabled  | Enabled     | ✘ | Mittel |

---

### FF‑01 – HTTPS‑Only Mode

**Erwartet:** Aktiviert  
**Beobachtet:** Deaktiviert  
**Status:** Nicht konform  
**Risikostufe:** Hoch  
**Empfehlung:** Setze `dom.security.https_only_mode = true`

---

### FF‑03 – Form Autofill

**Erwartet:** Disabled  
**Beobachtet:** Enabled  
**Status:** Nicht konform  
**Risikostufe:** Mittel  
**Empfehlung:** Setze `signon.autofillForms = false`
