# BloodVeil — Public V1.3 Beta

**Download and play.** Simple launcher that installs the client and cache automatically.

---

## Quick start

1. **Download** [BloodVeil-Launcher.ps1](https://github.com/DwightM95/BloodVeil_Public_V1.3_Beta/raw/main/BloodVeil-Launcher.ps1) or [BloodVeil-Launcher.bat](https://github.com/DwightM95/BloodVeil_Public_V1.3_Beta/raw/main/BloodVeil-Launcher.bat)
2. **Run it** (double-click the .bat, or right-click the .ps1 → Run with PowerShell)
3. On first run it will download the game client and cache; then the game launches.

**First run can take a few minutes.** After that, launches are quick.

---

## Requirements

- **Windows** 7 or newer (64-bit recommended)
- **Java 11+** — the launcher can download a portable Java if you don’t have it, or install from [Adoptium](https://adoptium.net/)
- **Internet** for first-time download
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

- **“Java not found”** — Install Java 11+ from [Adoptium](https://adoptium.net/) or run the .ps1 launcher (it can download Java).
- **Download fails** — Check internet and firewall; try “Run as administrator”.
- **Can’t connect** — Ensure server is up (66.179.191.115:52778) and your firewall allows the game.

---

## Files in this repo

| File | Description |
|------|-------------|
| **BloodVeil-Launcher.ps1** | Main launcher script (downloads client + cache, then runs the game). |
| **BloodVeil-Launcher.bat** | Wrapper to run the launcher with one double-click. |
| **Run-Bloodveil.bat** | Run the game only (use after install, in the folder that contains Bloodveil.jar). |

Game assets (Bloodveil.jar, cache.zip) are distributed via [Releases](https://github.com/DwightM95/BloodVeil_Public_V1.3_Beta/releases), not stored in the repo.
