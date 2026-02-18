# BloodVeil — Public V1.3 Beta

**Download and play.** Use the launcher to install the client and cache automatically.

---

## Recommended: EXE launcher (easiest)

1. Go to **[Releases](https://github.com/DwightM95/BloodVeil_Public_V1.3_Beta/releases)** and download **BloodVeil.exe** from the latest release.
2. Run **BloodVeil.exe**.  
   - Windows may show SmartScreen (click **More info** → **Run anyway**).
3. The launcher will download the game client and cache if needed, then you can click **PLAY**.

No Java setup required if you use the exe — it handles everything.

---

## Alternative: PowerShell / BAT launcher

1. **Download** [BloodVeil-Launcher.ps1](https://github.com/DwightM95/BloodVeil_Public_V1.3_Beta/raw/main/BloodVeil-Launcher.ps1) or [BloodVeil-Launcher.bat](https://github.com/DwightM95/BloodVeil_Public_V1.3_Beta/raw/main/BloodVeil-Launcher.bat).
2. **Run it** (double-click the .bat, or right-click the .ps1 → **Run with PowerShell**).
3. On first run it downloads the game client and cache from this repo’s releases, then launches the game.

**First run can take a few minutes.** After that, launches are quick.

---

## Requirements

- **Windows** 7 or newer (64-bit recommended)
- **Java 11+** (only if you use the .ps1/.bat launcher; the exe launcher can work without system Java)
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

- **“Java not found”** — Use **BloodVeil.exe** from Releases, or install Java 11+ from [Adoptium](https://adoptium.net/).
- **SmartScreen blocks the exe** — Normal for unsigned apps. Click **More info** → **Run anyway**.
- **Download fails** — Check internet and firewall; try “Run as administrator”.
- **Can’t connect** — Ensure server is up (66.179.191.115:52778) and your firewall allows the game.

---

## What’s in this repo

| File | Description |
|------|-------------|
| **BloodVeil-Launcher.ps1** | Script launcher: downloads client + cache from this repo’s releases, then runs the game. |
| **BloodVeil-Launcher.bat** | Double-click wrapper for the PowerShell launcher. |
| **Run-Bloodveil.bat** | Run the game only (use in the folder that contains Bloodveil.jar). |

**BloodVeil.exe**, **Bloodveil.jar**, and **cache.zip** are provided on the **[Releases](https://github.com/DwightM95/BloodVeil_Public_V1.3_Beta/releases)** page — the exe is the recommended download for most users.
