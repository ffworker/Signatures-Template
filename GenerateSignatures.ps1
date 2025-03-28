# PowerShell Signature Generator Template
# =======================================
# Automatisiert Signaturen für Outlook (HTML, TXT, RTF) aus AD-Daten oder lokalen Overrides

# Lade Konfiguration
if (Test-Path "./example-config.ps1") {
    . "./example-config.ps1"
}

# Dummy-Logik zum Veranschaulichen
Write-Host "Generiere Signaturen für Domain(s): $DomainSelection"
Write-Host "Verwende AD-Server: $Server"
Write-Host "Benutzer-Auswahl: $UserSelection"

if ($UserDataOverride) {
    Write-Host "AD deaktiviert – nutze UserDataOverride"
    $user = $UserDataOverride

    # Beispielhafte Verarbeitung
    foreach ($domain in $TemplateFiles.Keys) {
        $templatePath = $TemplateFiles[$domain]
        if (!(Test-Path $templatePath)) {
            Write-Host "Template nicht gefunden: $templatePath"
            continue
        }

        $template = Get-Content $templatePath -Raw
        foreach ($key in $user.Keys) {
            $template = $template -replace "\$${key}", $user[$key]
        }

        $outputDir = "./Logs"
        $filename = "${user.sAMAccountName}_${domain}_signature.html"
        $outputPath = Join-Path $outputDir $filename
        $template | Out-File -FilePath $outputPath -Encoding UTF8

        Write-Host "✔️ Signatur generiert: $outputPath"
    }
}
else {
    Write-Host "AD-Lookup noch nicht implementiert – bitte UserDataOverride verwenden."
}