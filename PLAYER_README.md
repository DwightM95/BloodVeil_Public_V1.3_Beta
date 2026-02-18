# 🎮 How to Play BloodVeil RSPS

Welcome to BloodVeil! This guide will help you get started.

## 🚀 Quick Start (RECOMMENDED)

**Use the automatic launcher** - it handles everything for you:

1. **Download**: Get `BloodVeil-Launcher.ps1` from [Releases](https://github.com/DwightM95/BloodVeil_Public_V1.3_Beta/releases/latest)
2. **Right-click** the file and select **"Run with PowerShell"**
3. **Done!** The launcher automatically downloads Java, the client, and cache files

> **Note:** If Windows blocks the script, run this command first:
> ```powershell
> Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
> ```

---

## ⚠️ IMPORTANT: Plugin Hub Warning

**DO NOT install the "117 HD" plugin** or other external rendering plugins from the RuneLite Plugin Hub. These plugins are designed for the official OSRS client and **WILL CRASH** BloodVeil.

If you're experiencing crashes, see [KNOWN_ISSUES.md](KNOWN_ISSUES.md) for solutions.

---

## 📥 Installation Methods

### ✅ Option 1: Automatic Launcher (EASIEST - Use This!)

The launcher handles everything automatically:
- Downloads Java if you don't have it
- Downloads the BloodVeil client
- Downloads cache files (~333 MB)
- Launches the game

**Steps:**
1. Download `BloodVeil-Launcher.ps1` from [Releases](https://github.com/DwightM95/BloodVeil_Public_V1.3_Beta/releases/latest)
2. Right-click → "Run with PowerShell"
3. Wait for downloads to complete
4. Game launches automatically!

### Option 2: Manual Installation (Advanced Users)

1. **Download the launcher**
   - Go to [Releases](https://github.com/DwightM95/BloodVeil_Public_V1.3_Beta/releases/latest)
   - Download `BloodVeil-Launcher.ps1`

2. **Run the launcher**
   - Right-click on `BloodVeil-Launcher.ps1`
   - Select "Run with PowerShell"
   - If prompted about execution policy, run this first:
     ```powershell
     Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
     ```

3. **Wait for download**
   - The launcher will automatically download:
     - Java (if needed)
     - BloodVeil client
     - Cache files (~331 MB)

4. **Play!**
   - The game will launch automatically
   - Next time, just run the launcher again

### Option 2: Manual Installation

1. **Install Java**
   - Download [Java 11](https://adoptium.net/) or higher
   - Run installer and complete setup
   - Verify: Open Command Prompt and type `java -version`

2. **Download game files**
   - Go to [Releases](https://github.com/DwightM95/BloodVeil_Public_V1.3_Beta/releases/latest)
   - Download `Bloodveil.jar`
   - Download `cache.zip`

3. **Set up files**
   - Create folder: `%USERPROFILE%\.bloodveil`
   - Copy `Bloodveil.jar` to this folder
   - Extract `cache.zip` to `%USERPROFILE%\.bloodveil\cache\`

4. **Run the game**
   - Double-click `Bloodveil.jar`
   - Or run from command line:
     ```cmd
     java -jar Bloodveil.jar
     ```

## 🎯 First Time Setup

### Creating an Account

1. **Start the client**
2. **At login screen:**
   - Click "Create Account" or "Register"
   - Choose a username (2-12 characters)
   - Choose a secure password
   - Remember your credentials!

### Getting Started

1. **Tutorial Island** (if enabled)
   - Follow the guide to learn basics
   - Or skip if you're familiar with OSRS

2. **Home Area**
   - You'll spawn at the BloodVeil home area
   - Look for NPCs with yellow names for guides
   - Use the shops to get starter gear

3. **Important NPCs**
   - **Banker** - Store your items
   - **General Store** - Buy basic supplies
   - **Skill Masters** - Train combat skills
   - **Slayer Master** - Get slayer tasks

## ⌨️ Useful Commands

### Player Commands
```
::commands - View all available commands
::claim - Claim starter pack (may be available)
::empty - Empty your inventory
```

### Controls
- **Right-click** - Context menu for objects/NPCs
- **Mouse wheel** - Zoom in/out (if enabled)
- **Arrow keys** - Rotate camera
- **F11** - Toggle fullscreen
- **ESC** - Open game menu

## 🚀 Quick Start Tips

### 1. Get Starter Gear
- Visit the general store at home
- Buy basic armor and weapons
- Get some food for combat

### 2. Start Training
- Combat: Fight monsters in the training area
- Skilling: Chop trees, fish, mine, etc.
- Slayer: Talk to Slayer Master for tasks

### 3. Make Money
- **Combat** - Kill monsters for drops
- **Skilling** - Gather resources and sell
- **Slayer** - Complete tasks for rewards
- **Trading** - Buy low, sell high

### 4. Join the Community
- Chat with other players (public chat)
- Ask for help - the community is friendly!
- Join a clan for group activities

## 🎨 Interface Guide

### Main Interface Elements

1. **Inventory** (right side)
   - Stores items you're carrying
   - 28 item slots

2. **Skills** (stats icon)
   - View your skill levels
   - Track progress

3. **Quest/Achievement Tab**
   - View available quests
   - Check achievements

4. **Equipment**
   - See worn items
   - Manage combat gear

5. **Prayer**
   - Activate prayer buffs
   - Requires prayer points

6. **Map** (top-right)
   - Shows your location
   - Click to set waypoints

## ⚔️ Combat Basics

### Combat Styles
- **Accurate** - +3 Attack bonus
- **Aggressive** - +3 Strength bonus
- **Defensive** - +3 Defence bonus
- **Controlled** - +1 to Attack, Strength, Defence

### Combat Triangle
- **Melee** beats Ranged
- **Ranged** beats Magic
- **Magic** beats Melee

### Food
- Always bring food for combat
- Right-click food to "Eat"
- Restore health during fights

## 🎯 Slayer Mastery (v1.3 Feature)

### Getting Started
1. Talk to **Slayer Master** at level 30 Slayer
2. Choose your **specialization path**:
   - **Strength** - Extra damage
   - **Immunity** - Reduced damage taken
   - **Recovery** - Health regeneration
   - **Luck** - Better drops

3. **Earn points** by completing slayer tasks
4. **Unlock nodes** in the skill tree
5. **Respec** at Slayer Master if you want to change

### Opening Skill Tree
- Command: `::masterytree`
- Or talk to Slayer Master and select "Mastery"

## 🐛 Troubleshooting

### Client won't start
- Make sure Java 11+ is installed
- Try running as Administrator
- Check antivirus isn't blocking it

### Can't connect to server
- Verify server is online: 66.179.191.115:52778
- Check your firewall settings
- Try disabling VPN if you're using one

### Cache download issues
- Re-download cache.zip
- Extract to correct location
- Ensure full extraction (13,000+ files)

### Low FPS / Performance
- Close other applications
- Lower graphics settings in-game
- Increase Java memory:
  ```cmd
  java -Xmx2G -jar Bloodveil.jar
  ```

### Login issues
- Check username/password spelling
- Server may be restarting (wait 1-2 minutes)
- Clear cache and re-download

## 📞 Getting Help

### In-Game
- Use public chat to ask questions
- Contact staff members (gold/red names)
- Use `::help` command if available

### Discord
- Join our Discord server (link in main README)
- Get help from community
- Report bugs

### GitHub
- Report bugs: [Issues](https://github.com/DwightM95/BloodVeil_Public_V1.3_Beta/issues)
- Check known issues

## 🎉 Have Fun!

Remember:
- Be respectful to other players
- Follow the rules
- Ask questions - we're here to help!
- Enjoy the game!

---

**Need more help?** Check the [README](README.md) or join our Discord!
