# What to upload to a Release (e.g. v1.3.0)

When you create a new release on this repo, upload these assets so the launchers work:

| Asset | Required | Notes |
|-------|----------|--------|
| **BloodVeilLauncher.jar** | Yes | **Primary launcher.** Java JAR that auto-downloads/updates the game and cache from this repo. Users run `java -jar BloodVeilLauncher.jar` or use Download-and-Run-Launcher.bat. |
| **Bloodveil.jar** | Yes | Client JAR (production config: VPS 66.179.191.115:52778). Downloaded by the launcher. |
| **cache.zip** | Yes | Game cache (including Slayer Mastery sprites). Downloaded by the launcher. |
| **version.txt** | Yes (for auto-updates) | One line, e.g. `1.3.0`. The launcher fetches this and re-downloads client + cache when the release version is newer than the installed one. |
| **BloodVeil.exe** | Optional | Native exe wrapper (jpackage from main project). Not required; the JAR launcher is the main client-facing launcher. |

All launchers download from:  
`https://github.com/DwightM95/BloodVeil_Public_V1.3_Beta/releases/download/<tag>/`

Tag must match the launcher (e.g. **v1.3.0**). When you cut a new release (e.g. v1.3.1), update the tag in `Launcher.java` (RELEASE_TAG), rebuild BloodVeilLauncher.jar, and upload it plus Bloodveil.jar, cache.zip, and version.txt for that tag.
