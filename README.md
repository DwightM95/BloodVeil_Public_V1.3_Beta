# 🩸 BloodVeil RSPS - Public Client (v1.3 Beta)

A custom Old School RuneScape private server with unique features and enhancements.

## 🎮 Quick Start

### Option 1: BloodVeil.exe (Recommended — no PowerShell needed)
**[➤ Download BloodVeil.exe](https://github.com/DwightM95/BloodVeil_Public_V1.3_Beta/raw/main/BloodVeil.exe)**

1. Download **BloodVeil.exe** (~30 KB)
2. Double-click to run
3. First run: it will download Java (if needed), the client, and cache — then launch the game

No script execution policies or PowerShell required. If Windows SmartScreen appears, click "More info" → "Run anyway" (the EXE is not signed).

### Option 2: PowerShell Launcher
**[➤ Download BloodVeil-Launcher.ps1](https://github.com/DwightM95/BloodVeil_Public_V1.3_Beta/raw/main/BloodVeil-Launcher.ps1)** — Right-click → Run with PowerShell. Same behavior as the EXE.

### Option 3: Manual Download
**[➤ Download Latest Release](https://github.com/DwightM95/BloodVeil_Public_V1.3_Beta/releases/latest)**

1. Download `Bloodveil.jar` and `cache.zip`
2. Extract `cache.zip` to `%USERPROFILE%\.bloodveil_live\cache\`
3. Run: `java -jar Bloodveil.jar`

## 📦 What's New in v1.3

- ⚔️ **Slayer Mastery System** - Specialization paths with skill trees
- 🎯 **Enhanced Combat** - New mechanics and abilities
- 🏆 **Achievement System** - Comprehensive task tracking
- 🎨 **UI Improvements** - Custom interfaces and themes
- 🐛 **Bug Fixes** - Stability and performance improvements

## 🖥️ Requirements

- **Operating System:** Windows 10 or later
- **Java:** 11 or higher (auto-installed by launcher)
- **RAM:** 1GB minimum, 2GB recommended
- **Disk Space:** ~500 MB
- **Internet:** Required for first launch

## 🌐 Server Information

**IP:** 66.179.191.115  
**Port:** 52778  
**Status:** Online 24/7

## 📋 Current Release: v1.3.1

| File | Size | Purpose |
|------|------|---------|
| **BloodVeil.exe** | ~30 KB | **Recommended** — one-click launcher, no PowerShell |
| BloodVeil-Launcher.ps1 | ~10 KB | Same launcher as script (if you prefer) |
| Bloodveil.jar | ~58 MB | Game client |
| cache.zip | ~331 MB | Game assets and data |
| version.txt | <1 KB | Version information |

## 🚀 Features

### Core Gameplay
- Custom zones and areas
- Unique items and equipment
- Custom minigames and activities
- Boss encounters
- Skills and training areas

### BloodVeil Exclusive
- Custom launcher with auto-updates
- Slayer Mastery specialization system
- Trading post system
- Achievement & task system
- Custom UI and themes

## 🐛 Troubleshooting

### Launcher Won't Run
- **Use BloodVeil.exe** — avoids PowerShell entirely. Just double-click.
- If you use the .ps1 script: `Set-ExecutionPolicy -Scope CurrentUser RemoteSigned`

### Can't Connect to Server
- Check firewall settings
- Verify server is online: `66.179.191.115:52778`
- Try restarting the client

### Cache Download Issues
- Re-run the launcher
- Or manually download `cache.zip` and extract to `%USERPROFILE%\.bloodveil_live\cache\`

### Java Issues
- The launcher auto-installs Java 11
- Or manually install: [Adoptium JDK 11](https://adoptium.net/)

### Performance Issues
- Increase allocated memory: `java -Xmx2G -jar Bloodveil.jar`
- Close other applications
- Update graphics drivers

## 📁 File Locations

- **Client JAR:** in the folder where you run the launcher, or `%USERPROFILE%\.bloodveil_live\`
- **Cache:** `%USERPROFILE%\.bloodveil_live\cache\`
- **Settings / Logs:** under the same folder as the client

## 🔄 Updates

The client checks for updates automatically on launch. Release notes are in the [Releases](https://github.com/DwightM95/BloodVeil_Public_V1.3_Beta/releases) section.

## 🤝 Community

- **Discord:** [Join our community](#) *(Add your Discord invite)*
- **Issues:** [Report bugs](https://github.com/DwightM95/BloodVeil_Public_V1.3_Beta/issues)
- **Wiki:** [Game guides](#) *(Add your wiki link)*

## ⚠️ Known Issues

- World map interface is currently disabled (coming soon)
- Some UI elements may overlap in resizable mode
- Check [Issues](https://github.com/DwightM95/BloodVeil_Public_V1.3_Beta/issues) for full list

## 📜 License

Based on RuneLite and OSRS frameworks.  
Custom BloodVeil modifications © 2026

---

**Server Status:** 🟢 Online  
**Version:** v1.3.1 Beta  
**Last Updated:** February 18, 2026

**Enjoy BloodVeil!** 🎉
