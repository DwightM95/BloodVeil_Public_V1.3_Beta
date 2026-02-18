# BloodVeil — Public V1.3 Beta

**Download and play.** The launcher is a **Java application** that automatically downloads and updates the game client and all supporting files from this repository.

---

## Recommended: Java launcher (auto-updates from repo)

The launcher is **BloodVeilLauncher.jar**. It downloads the game client and cache from this repo’s [Releases](https://github.com/DwightM95/BloodVeil_Public_V1.3_Beta/releases) and checks for updates each time you run it.

### Option A — One-click (download launcher from repo, then run)

1. **Download** [Download-and-Run-Launcher.bat](https://github.com/DwightM95/BloodVeil_Public_V1.3_Beta/raw/main/Download-and-Run-Launcher.bat).
2. **Double-click** it.  
   - The first time it will download **BloodVeilLauncher.jar** from the repo, then start the launcher.  
   - The launcher will then download/update the game and cache from the same repo.
3. When the launcher says **Ready**, click **LAUNCH GAME**.

### Option B — Manual (if you already have the launcher JAR)

1. Download **BloodVeilLauncher.jar** from [Releases](https://github.com/DwightM95/BloodVeil_Public_V1.3_Beta/releases) (e.g. v1.3.0).
2. Run: `java -jar BloodVeilLauncher.jar`
3. The launcher will download or update the game and cache from the repo, then you can click **LAUNCH GAME**.

**No need to build an exe.** The launcher is the JAR; it pulls everything (client, cache, and updates) from this repository automatically.

---

## Alternative: PowerShell / BAT script launcher

1. **Download** [BloodVeil-Launcher.ps1](https://github.com/DwightM95/BloodVeil_Public_V1.3_Beta/raw/main/BloodVeil-Launcher.ps1) or [BloodVeil-Launcher.bat](https://github.com/DwightM95/BloodVeil_Public_V1.3_Beta/raw/main/BloodVeil-Launcher.bat).
2. **Run it** (double-click the .bat, or right-click the .ps1 → **Run with PowerShell**).  
   These scripts also download the game and cache from this repo’s releases.

---

## Requirements

- **Windows** 7 or newer (64-bit recommended)
- **Java 11+** — [Adoptium](https://adoptium.net/) (the launcher needs Java to run)
- **Internet** for first-time download and for update checks
- **~500 MB** free disk space

---

## Server

- **IP:** 66.179.191.115  
- **Port:** 52778  
- **Status:** Online 24/7

---

## Manual install (advanced)

1. From [Releases](https://github.com/DwightM95/BloodVeil_Public_V1.3_Beta/releases), download **Bloodveil.jar** and **cache.zip**.
2. Extract **cache.zip** into the same folder as **Bloodveil.jar** (or into your user cache folder if you know the structure).
3. Run: `java -jar Bloodveil.jar`

---

## Troubleshooting

- **“Java not found”** — Install Java 11+ from [Adoptium](https://adoptium.net/), then run the launcher again.
- **Download fails** — Check internet and firewall; try “Run as administrator”.
- **Can’t connect** — Ensure server is up (66.179.191.115:52778) and your firewall allows the game.
- **Launcher says update available** — It will download the new client/cache automatically; wait for “Ready to play” then click **LAUNCH GAME**.

---

## What’s in this repo

| File | Description |
|------|-------------|
| **Download-and-Run-Launcher.bat** | Downloads **BloodVeilLauncher.jar** from Releases (if needed), then runs it. One-click start. |
| **BloodVeil-Launcher.ps1** | Script that downloads client + cache from this repo’s releases, then runs the game. |
| **BloodVeil-Launcher.bat** | Wrapper that runs the PowerShell launcher. |
| **Run-Bloodveil.bat** | Run the game only (use in the folder that contains Bloodveil.jar). |

**BloodVeilLauncher.jar**, **Bloodveil.jar**, and **cache.zip** are on the [Releases](https://github.com/DwightM95/BloodVeil_Public_V1.3_Beta/releases) page. The **Java launcher (JAR)** is the main client-facing launcher: it automatically downloads updates and all supporting files from this repository.
