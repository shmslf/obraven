# download-fonts-from-fontsource.ps1
# Purpose: recreate the OBRAVEN local WOFF2 font files from Fontsource packages.
# Date created: 2026-04-26
# Source: Fontsource packages for Inter and Manrope.
#
# Requirements:
# - Node.js / npm installed and available in PATH.
# - Run from the website repository root.
#
# Security:
# - Review before running.
# - Do not run scripts from unknown sources.
# - Commit only the WOFF2 files and relevant README/licence notes.

$ErrorActionPreference = "Stop"

$Root = Get-Location
$Temp = Join-Path $env:TEMP "obraven-fontsource-download"
$InterOut = Join-Path $Root "assets/fonts/inter"
$ManropeOut = Join-Path $Root "assets/fonts/manrope"

Remove-Item $Temp -Recurse -Force -ErrorAction SilentlyContinue
New-Item -ItemType Directory -Path $Temp | Out-Null
New-Item -ItemType Directory -Path $InterOut -Force | Out-Null
New-Item -ItemType Directory -Path $ManropeOut -Force | Out-Null

Push-Location $Temp

npm init -y | Out-Null
npm install @fontsource/inter @fontsource/manrope | Out-Null

$InterWeights = @("400","500","600","700")
foreach ($Weight in $InterWeights) {
  $Source = Join-Path $Temp "node_modules/@fontsource/inter/files/inter-latin-$Weight-normal.woff2"
  Copy-Item $Source (Join-Path $InterOut "inter-latin-$Weight-normal.woff2") -Force
}

$ManropeWeights = @("500","600","700","800")
foreach ($Weight in $ManropeWeights) {
  $Source = Join-Path $Temp "node_modules/@fontsource/manrope/files/manrope-latin-$Weight-normal.woff2"
  Copy-Item $Source (Join-Path $ManropeOut "manrope-latin-$Weight-normal.woff2") -Force
}

Pop-Location
Remove-Item $Temp -Recurse -Force -ErrorAction SilentlyContinue

Write-Host "OBRAVEN local font files refreshed under assets/fonts/."
Write-Host "Next: test locally, then confirm live site has no Google Fonts network calls."
