@echo off
title BloodVeil V1.3 Beta Launcher
cd /d "%~dp0"
powershell -ExecutionPolicy Bypass -NoProfile -File "%~dp0BloodVeil-Launcher.ps1"
pause
