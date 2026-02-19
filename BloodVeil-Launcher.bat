@echo off
title BloodVeil V1.3 Beta Launcher
cd /d "%~dp0"

REM Always fetch the latest launcher script from GitHub so updates propagate automatically
set "PS1_URL=https://raw.githubusercontent.com/DwightM95/BloodVeil_Public_V1.3_Beta/main/BloodVeil-Launcher.ps1"
set "PS1_FILE=%~dp0BloodVeil-Launcher.ps1"

echo [*] Checking for launcher updates...
powershell -ExecutionPolicy Bypass -NoProfile -Command ^
  "try { [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; (New-Object Net.WebClient).DownloadFile('%PS1_URL%', '%PS1_FILE%'); Write-Host '[OK] Launcher is up to date.' } catch { Write-Host '[!] Could not check for updates, using local launcher.' }"

powershell -ExecutionPolicy Bypass -NoProfile -File "%PS1_FILE%"
pause
