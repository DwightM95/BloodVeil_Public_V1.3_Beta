# Known Issues - BloodVeil v1.3

## 117 HD Plugin Crash

**Issue:** The client may crash when trying to use the 117 HD plugin from the RuneLite Plugin Hub.

**Cause:** 
- The 117 HD plugin is designed for the official Old School RuneScape client
- It requires specific GPU rendering features that may not be compatible with custom RSPS clients
- BloodVeil uses a customized client that has conflicts with the 117 HD rendering engine

**Solution:**
- **DO NOT** install or enable the 117 HD plugin from the Plugin Hub
- The standard BloodVeil graphics are optimized for the best experience
- Future updates may include custom HD rendering features

**Workaround:**
If you've already installed 117 HD and are experiencing crashes:
1. Close the BloodVeil client
2. Navigate to: `%USERPROFILE%\.runelite\`
3. Delete the `externalPlugins` folder
4. Restart the client

**Recommendation:**
For stability, we recommend avoiding external Plugin Hub plugins that modify rendering or game graphics. Stick to the built-in features provided with BloodVeil.

## Other Plugin Hub Plugins

While some Plugin Hub plugins may work, they are not officially supported. Use at your own risk. Plugins that modify:
- Graphics/Rendering (117 HD, GPU, etc.)
- Network communication
- Game mechanics

...are most likely to cause issues.

---

**Need Help?**
Join our Discord: https://discord.gg/BloodVeil
