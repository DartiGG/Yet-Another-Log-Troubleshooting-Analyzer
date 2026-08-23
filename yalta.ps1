param (
    [Parameter(Mandatory=$true)][string]$FilePath,
    [Parameter(Mandatory=$true)][string]$Type
)

# Берем rules.json из папки, где лежит yalta.ps1
$RulesPath = Join-Path $PSScriptRoot "rules.json"

if (-not (Test-Path $FilePath)) {
    Write-Error "Error: Log file '$FilePath' not found!"
    exit
}

if (-not (Test-Path $RulesPath)) {
    Write-Error "Error: 'rules.json' not found in script directory ($PSScriptRoot)!"
    exit
}

Write-Host "Sending $FilePath ($Type) to YALTA..." -ForegroundColor Cyan

curl.exe -s -X POST "http://127.0.0.1:5678/webhook/analyze" `
  -F "file=@$FilePath" `
  -F "rules=@$RulesPath" `
  -F "type=$Type"