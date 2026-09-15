#!/usr/bin/env pwsh
<#
.SYNOPSIS
    Отправляет лог-файл и файл правил на webhook для анализа.
#>

param(
    [string]$LogFile   = "test.log",
    [string]$RulesFile = "rules.json",
    [string]$LogType   = "ssh"   # Если параметр не передан, принудительно берётся 'ssh'
)

$ErrorActionPreference = "Stop"

$WebhookUrl = $env:WEBHOOK_URL
if ([string]::IsNullOrEmpty($WebhookUrl)) {
    $WebhookUrl = "http://localhost:5678/webhook/analyze"
}

if (-not (Test-Path $LogFile)) {
    Write-Error "Файл лога не найден: $LogFile"
    exit 1
}
if (-not (Test-Path $RulesFile)) {
    Write-Error "Файл правил не найден: $RulesFile"
    exit 1
}

Write-Host "Sending $LogFile with rules $RulesFile (type: $LogType)..."

try {
    # PowerShell 7+: Invoke-RestMethod поддерживает -Form для multipart/form-data
    $form = @{
        file  = Get-Item -Path $LogFile
        rules = Get-Item -Path $RulesFile
        type  = $LogType
    }

    $response = Invoke-RestMethod -Uri $WebhookUrl -Method Post -Form $form
    $response | ConvertTo-Json -Depth 10
}
catch {
    Write-Error "Ошибка при отправке запроса: $_"
    exit 1
}
