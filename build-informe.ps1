# Genera Informe.pdf desde informe.md (sin índice ni numeración de secciones)
$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot

if (-not (Test-Path "informe.md")) {
    Write-Error "No existe informe.md en esta carpeta. Renombra o copia tu Markdown como informe.md."
}

pandoc informe.md --defaults pdf-informe.yaml
Write-Host "Listo: Informe.pdf" -ForegroundColor Green
