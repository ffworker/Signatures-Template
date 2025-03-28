# ✍️ PowerShell Signature Generator (Template-Projekt)

Dieses PowerShell-Projekt dient zur automatisierten Erstellung von Outlook-kompatiblen E-Mail-Signaturen (HTML, Text, RTF) auf Basis von Active Directory oder lokal bereitgestellten Nutzerdaten.

Ideal für Unternehmen, IT-Administratoren oder Service-Desks, um konsistente Signaturen bereitzustellen – **ohne Drittsoftware**.

## 🚀 Funktionen

- 🔁 Multi-Domain-Unterstützung
- 📄 HTML-/Text-/RTF-Signaturformate
- 🧩 Platzhalter für AD-Daten (z. B. `$givenName`, `$mail`, ...)
- 💼 Lokale oder zentrale Bereitstellung (Outlook-Kompatibel)
- 🛠 Logging & Vorschau-Funktion

## 📦 Projektstruktur

```bash
├── GenerateSignatures.ps1
├── Templatefiles/
│   └── YourDomain_template.html
├── Logs/
├── assets/
└── example-config.ps1
```

## 🛠 Konfiguration

Alle Parameter kannst du per `example-config.ps1` setzen.

## 🔣 Platzhalter in Templates

```
$givenName, $sn, $department, $mail, ...
```

## 📂 Beispieltemplate (HTML)

```html
<p><strong>$givenName $sn</strong></p>
<p>$department</p>
<p>📞 $telephoneNumber | ✉️ $mail</p>
<img src="logo.png" width="120" alt="Logo">
```