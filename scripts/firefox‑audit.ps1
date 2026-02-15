<#
.SYNOPSIS
    Firefox Security Audit (basic)
.DESCRIPTION
    Prüft sicherheitsrelevante Firefox‑Einstellungen.
#>

Write‑Host "`n=== Firefox Security Audit ===`n"

$results = @()

function Prüfe {
    param($id, $desc, $value)
    $results += "$id : $desc = $value"
    Write‑Host "$id : $desc = $value"
}

# Beispiel: HTTPS‑Only Mode prüfen
$prefPath = "$env:APPDATA\Mozilla\Firefox\Profiles"
$profiles = Get‑ChildItem ‑Path $prefPath ‑Recurse ‑Filter prefs.js

foreach ($p in $profiles) {
    $content = Get‑Content $p.FullName
    $httpsOnly = ($content | Select‑String "dom.security.https_only_mode" | Select‑Object ‑ExpandProperty Line)
    Prüfe "FF‑01" "HTTPS‑Only Mode" ($httpsOnly ‑ne $null)
}

# Weitere Prüfungen analog (Tracking, Telemetry etc.)
# ...
