# What to upload to a Release (e.g. v1.3.0)

When you create a new release on this repo, upload these assets so the launchers work:

| Asset | Required | Notes |
|-------|----------|--------|
| **BloodVeil.exe** | Yes (for exe users) | Build from main project: `launcher/` → build exe (e.g. BUILD_ALL.ps1 or jpackage). Users get this from the Releases page. |
| **Bloodveil.jar** | Yes | Client JAR built with production config (VPS 66.179.191.115:52778). |
| **cache.zip** | Yes | Game cache including Slayer Mastery sprites. |
| **version.txt** | Optional | One line: e.g. `1.3.0` — lets the Java exe launcher detect updates. |

All launchers (exe, PS1, bat) download from:  
`https://github.com/DwightM95/BloodVeil_Public_V1.3_Beta/releases/download/<tag>/`

Tag must match the launcher (e.g. **v1.3.0**).
