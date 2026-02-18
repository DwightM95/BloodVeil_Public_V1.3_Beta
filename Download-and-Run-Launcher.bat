@echo off
title BloodVeil Launcher
cd /d "%~dp0"

set "RELEASE_TAG=v1.3.0"
set "JAR_URL=https://github.com/DwightM95/BloodVeil_Public_V1.3_Beta/releases/download/%RELEASE_TAG%/BloodVeilLauncher.jar"
set "JAR_FILE=BloodVeilLauncher.jar"

if not exist "%JAR_FILE%" (
    echo Downloading BloodVeil launcher from repository...
    powershell -ExecutionPolicy Bypass -NoProfile -Command ^
        "try { [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; (New-Object Net.WebClient).DownloadFile('%JAR_URL%', '%JAR_FILE%'); Write-Host 'Download complete.' } catch { Write-Host 'Download failed:' $_.Exception.Message; exit 1 }"
    if errorlevel 1 (
        echo.
        echo Could not download the launcher. Check your internet connection.
        echo You can manually download BloodVeilLauncher.jar from:
        echo https://github.com/DwightM95/BloodVeil_Public_V1.3_Beta/releases
        pause
        exit /b 1
    )
)

echo Starting BloodVeil launcher...
echo The launcher will download or update the game from the repository.
echo.
java -jar "%JAR_FILE%"
if errorlevel 1 (
    echo.
    echo Java may not be installed. Download Java 11+ from: https://adoptium.net/
    pause
)
exit /b 0
