# BloodVeil RSPS Client Launcher
# Bootstrap launcher - downloads client and cache from GitHub releases

# Configuration — for new releases: update version and tag to match GitHub release
$RELEASE_TAG = "v1.3.0"
$GITHUB_RELEASE = "https://github.com/DwightM95/BloodVeil_Public_V1.3_Beta/releases/download/$RELEASE_TAG"
$CLIENT_JAR = "Bloodveil.jar"
$CACHE_ARCHIVE = "cache.zip"
$CLIENT_VERSION = "1.3.0"
$SERVER_IP = "66.179.191.115:52778"

# Java download configuration (Windows x64)
$JAVA_VERSION = "11.0.23+9"
$JAVA_DOWNLOAD_URL = "https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.23%2B9/OpenJDK11U-jre_x64_windows_hotspot_11.0.23_9.zip"
$JAVA_DIR = "java"
$JAVA_EXECUTABLE = "$JAVA_DIR\bin\java.exe"

# Set window title
$Host.UI.RawUI.WindowTitle = "BloodVeil RSPS Client Launcher"

# Display header
Write-Host ""
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "   BloodVeil RSPS - Client Launcher" -ForegroundColor Yellow
Write-Host "   Version $CLIENT_VERSION" -ForegroundColor Gray
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host ""

# Check/Download Java
Write-Host "[*] Checking for Java..." -ForegroundColor Cyan

$javaExe = $null

# First check for bundled Java
if (Test-Path $JAVA_EXECUTABLE) {
    Write-Host "[OK] Bundled Java found" -ForegroundColor Green
    $javaExe = (Resolve-Path $JAVA_EXECUTABLE).Path
}
# Then check system Java
elseif (Get-Command java -ErrorAction SilentlyContinue) {
    $javaCommand = Get-Command java -ErrorAction SilentlyContinue
    Write-Host "[OK] System Java found: $($javaCommand.Source)" -ForegroundColor Green
    $javaExe = "java"
}
# Download portable Java if not found
else {
    Write-Host "[!] Java not found. Downloading portable Java..." -ForegroundColor Yellow
    Write-Host "    This is a one-time download (~40 MB)" -ForegroundColor Gray
    
    $javaZip = "java_runtime.zip"
    
    if (-not (Download-FileWithProgress -Url $JAVA_DOWNLOAD_URL -OutputPath $javaZip)) {
        Write-Host "[ERROR] Failed to download Java runtime" -ForegroundColor Red
        Write-Host "Please install Java manually from: https://adoptium.net/" -ForegroundColor Yellow
        Read-Host "Press Enter to exit"
        exit 1
    }
    
    Write-Host "[*] Extracting Java runtime..." -ForegroundColor Cyan
    
    # Extract Java
    Add-Type -AssemblyName System.IO.Compression.FileSystem
    [System.IO.Compression.ZipFile]::ExtractToDirectory($javaZip, ".")
    
    # Find the extracted JRE folder (it has version in name)
    $extractedFolder = Get-ChildItem -Directory | Where-Object { $_.Name -like "jdk*" -or $_.Name -like "OpenJDK*" } | Select-Object -First 1
    
    if ($extractedFolder) {
        # Rename to standard "java" folder
        if (Test-Path $JAVA_DIR) {
            Remove-Item -Recurse -Force $JAVA_DIR
        }
        Rename-Item $extractedFolder.FullName $JAVA_DIR
    }
    
    # Cleanup zip
    Remove-Item $javaZip -ErrorAction SilentlyContinue
    
    if (Test-Path $JAVA_EXECUTABLE) {
        Write-Host "[OK] Java installed successfully" -ForegroundColor Green
        $javaExe = (Resolve-Path $JAVA_EXECUTABLE).Path
    } else {
        Write-Host "[ERROR] Java extraction failed" -ForegroundColor Red
        Write-Host "Please install Java manually from: https://adoptium.net/" -ForegroundColor Yellow
        Read-Host "Press Enter to exit"
        exit 1
    }
}

# Function to download file with progress
function Download-FileWithProgress {
    param(
        [string]$Url,
        [string]$OutputPath
    )
    
    try {
        Write-Host "[*] Downloading from: $Url" -ForegroundColor Gray
        $webClient = New-Object System.Net.WebClient
        
        # Register progress event
        Register-ObjectEvent -InputObject $webClient -EventName DownloadProgressChanged -SourceIdentifier WebClient.DownloadProgressChanged -Action {
            $percent = $EventArgs.ProgressPercentage
            $received = [math]::Round($EventArgs.BytesReceived / 1MB, 2)
            $total = [math]::Round($EventArgs.TotalBytesToReceive / 1MB, 2)
            Write-Progress -Activity "Downloading" -Status "$received MB / $total MB" -PercentComplete $percent
        }
        
        # Download file
        $webClient.DownloadFile($Url, $OutputPath)
        
        # Cleanup
        Unregister-Event -SourceIdentifier WebClient.DownloadProgressChanged
        Write-Progress -Activity "Downloading" -Completed
        $webClient.Dispose()
        
        return $true
    } catch {
        Write-Host "[ERROR] Download failed: $_" -ForegroundColor Red
        return $false
    }
}

# Check/Download Client JAR
Write-Host ""
Write-Host "[*] Checking client installation..." -ForegroundColor Cyan

if (-not (Test-Path $CLIENT_JAR)) {
    Write-Host "[!] Client not found. Downloading..." -ForegroundColor Yellow
    $clientUrl = "$GITHUB_RELEASE/$CLIENT_JAR"
    
    if (-not (Download-FileWithProgress -Url $clientUrl -OutputPath $CLIENT_JAR)) {
        Write-Host "[ERROR] Failed to download client JAR" -ForegroundColor Red
        Write-Host "URL: $clientUrl" -ForegroundColor Gray
        Read-Host "Press Enter to exit"
        exit 1
    }
    
    Write-Host "[OK] Client downloaded successfully" -ForegroundColor Green
} else {
    Write-Host "[OK] Client found" -ForegroundColor Green
}

# Check/Download Cache
$cacheDir = "$env:USERPROFILE\.bloodveil_live\cache"
$versionFile = "$cacheDir\version.txt"

Write-Host "[*] Checking cache installation..." -ForegroundColor Cyan

$needsCache = $false
if (-not (Test-Path $cacheDir)) {
    $needsCache = $true
    Write-Host "[!] Cache directory not found" -ForegroundColor Yellow
} elseif (-not (Test-Path $versionFile)) {
    $needsCache = $true
    Write-Host "[!] Cache version file missing" -ForegroundColor Yellow
} else {
    $localVersion = Get-Content $versionFile -ErrorAction SilentlyContinue
    if ($localVersion -ne $CLIENT_VERSION) {
        $needsCache = $true
        Write-Host "[!] Cache outdated (Local: $localVersion, Required: $CLIENT_VERSION)" -ForegroundColor Yellow
    }
}

if ($needsCache) {
    Write-Host "[*] Downloading cache files..." -ForegroundColor Yellow
    $cacheUrl = "$GITHUB_RELEASE/$CACHE_ARCHIVE"
    $tempCache = "cache_temp.zip"
    
    if (-not (Download-FileWithProgress -Url $cacheUrl -OutputPath $tempCache)) {
        Write-Host "[ERROR] Failed to download cache" -ForegroundColor Red
        Write-Host "URL: $cacheUrl" -ForegroundColor Gray
        Read-Host "Press Enter to exit"
        exit 1
    }$javaExe
    
    Write-Host "[*] Extracting cache files..." -ForegroundColor Cyan
    
    # Create cache directory if needed
    if (-not (Test-Path $cacheDir)) {
        New-Item -ItemType Directory -Path $cacheDir -Force | Out-Null
    }
    
    # Extract cache
    Expand-Archive -Path $tempCache -DestinationPath $cacheDir -Force
    
    # Write version file
    Set-Content -Path $versionFile -Value $CLIENT_VERSION
    
    # Cleanup temp file
    Remove-Item $tempCache -ErrorAction SilentlyContinue
    
    Write-Host "[OK] Cache installed successfully" -ForegroundColor Green
} else {
    Write-Host "[OK] Cache up to date" -ForegroundColor Green
}

# Launch the client
Write-Host ""
Write-Host "[*] Launching BloodVeil Client..." -ForegroundColor Cyan
Write-Host "[*] Server: $SERVER_IP" -ForegroundColor Gray
Write-Host "[*] Memory: 512MB max / 256MB initial" -ForegroundColor Gray
Write-Host ""
Write-Host "Close this window to exit the game" -ForegroundColor DarkGray
Write-Host ""

# Launch client with recommended settings
$process = Start-Process -FilePath "java" -ArgumentList "-Xmx512m", "-Xms256m", "-jar", $CLIENT_JAR -Wait -NoNewWindow -PassThru

# Show exit message
if ($process.ExitCode -ne 0) {
    Write-Host ""
    Write-Host "[ERROR] Client exited with error code: $($process.ExitCode)" -ForegroundColor Red
    Write-Host ""
    Read-Host "Press Enter to exit"
    exit $process.ExitCode
}

Write-Host ""
Write-Host "[*] Thanks for playing BloodVeil!" -ForegroundColor Green
Write-Host ""
Read-Host "Press Enter to exit"
exit 0
