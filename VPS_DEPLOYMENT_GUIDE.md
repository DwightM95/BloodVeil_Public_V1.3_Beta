# BloodVeil RSPS - VPS Deployment Guide

This guide covers deploying BloodVeil v1.3 to your VPS.

## 📋 Prerequisites

- VPS with SSH access (Ubuntu/Debian recommended)
- Root or sudo access
- At least 2GB RAM (4GB recommended)
- Java 11 or higher installed
- Port 52778 open in firewall

## 🚀 Quick Deployment

### Step 1: Prepare Server Directory on VPS

```bash
mkdir -p /root/bloodveil_server
cd /root/bloodveil_server
```

### Step 2: Upload Server JAR

From your Windows machine:
```powershell
scp "C:\Users\Administrator\Desktop\BloodVeil - V1.3\BloodVeilRSPS\server\build\libs\BloodVeil-Server.jar" root@66.179.191.115:/root/bloodveil_server/
```

### Step 3: Upload Deployment Scripts

```powershell
scp "C:\Users\Administrator\Desktop\BloodVeil - V1.3\BloodVeilRSPS\deploy_v1.3_to_vps.sh" root@66.179.191.115:/root/bloodveil_server/
scp "C:\Users\Administrator\Desktop\BloodVeil - V1.3\BloodVeilRSPS\start_vps_server.sh" root@66.179.191.115:/root/bloodveil_server/
scp "C:\Users\Administrator\Desktop\BloodVeil - V1.3\BloodVeilRSPS\stop_vps_server.sh" root@66.179.191.115:/root/bloodveil_server/
```

### Step 4: Make Scripts Executable

On VPS:
```bash
cd /root/bloodveil_server
chmod +x *.sh
```

### Step 5: Run Deployment

```bash
./deploy_v1.3_to_vps.sh
```

## 🔄 Server Management

### Start Server
```bash
cd /root/bloodveil_server
./start_vps_server.sh
```

### Stop Server
```bash
cd /root/bloodveil_server
./stop_vps_server.sh
```

### Restart Server
```bash
./stop_vps_server.sh
./start_vps_server.sh
```

### Check Server Status
```bash
# Check if running
pgrep -f BloodVeil-Server.jar

# Check port
netstat -tuln | grep 52778

# View logs
tail -f /root/bloodveil_server/server.log
```

## 📁 Server Directory Structure

```
/root/bloodveil_server/
├── BloodVeil-Server.jar          # Main server JAR
├── server.log                     # Server output log
├── deploy_v1.3_to_vps.sh         # Deployment script
├── start_vps_server.sh           # Start script
├── stop_vps_server.sh            # Stop script
├── etc/
│   └── cfg/
│       └── slayer_tiers.json     # Slayer config
├── save_files/                    # Player save data
├── logs/                          # Historical logs
└── resources/                     # Server resources
```

## 🔒 Firewall Configuration

### Ubuntu/Debian (UFW)
```bash
ufw allow 52778/tcp
ufw reload
```

### CentOS/RHEL (firewalld)
```bash
firewall-cmd --permanent --add-port=52778/tcp
firewall-cmd --reload
```

## 🔍 Troubleshooting

### Server Won't Start

1. Check Java version:
```bash
java -version
```

2. Check logs:
```bash
tail -100 /root/bloodveil_server/server.log
```

3. Check memory:
```bash
free -h
```

4. Check disk space:
```bash
df -h
```

### Port Already in Use

```bash
# Find process using port
lsof -i :52778

# Kill old server
pkill -9 -f BloodVeil-Server.jar
```

### Connection Issues

1. Verify server is listening:
```bash
netstat -tuln | grep 52778
```

2. Check firewall:
```bash
ufw status  # Ubuntu
firewall-cmd --list-all  # CentOS
```

3. Test connection from Windows:
```powershell
Test-NetConnection -ComputerName 66.179.191.115 -Port 52778
```

## 📊 Monitoring

### Real-time Logs
```bash
tail -f /root/bloodveil_server/server.log
```

### Resource Usage
```bash
# CPU and Memory
top -p $(pgrep -f BloodVeil-Server.jar)

# Or use htop
htop -p $(pgrep -f BloodVeil-Server.jar)
```

### Disk Usage
```bash
du -sh /root/bloodveil_server/*
```

## 🔄 Auto-Restart on Crash

Create systemd service:

```bash
nano /etc/systemd/system/bloodveil.service
```

Add:
```ini
[Unit]
Description=BloodVeil RSPS Server
After=network.target

[Service]
Type=simple
User=root
WorkingDirectory=/root/bloodveil_server
ExecStart=/usr/bin/java -Xmx4096M -Xms2048M -jar BloodVeil-Server.jar
Restart=always
RestartSec=10
StandardOutput=append:/root/bloodveil_server/server.log
StandardError=append:/root/bloodveil_server/server.log

[Install]
WantedBy=multi-user.target
```

Enable and start:
```bash
systemctl daemon-reload
systemctl enable bloodveil
systemctl start bloodveil
```

Manage service:
```bash
systemctl status bloodveil   # Check status
systemctl start bloodveil    # Start
systemctl stop bloodveil     # Stop
systemctl restart bloodveil  # Restart
journalctl -u bloodveil -f   # View logs
```

## 🎯 Performance Tuning

### Increase Memory
Edit start script to use more RAM:
```bash
java -Xmx8192M -Xms4096M -jar BloodVeil-Server.jar
```

### Java GC Options
```bash
java -Xmx4G -Xms2G \
  -XX:+UseG1GC \
  -XX:MaxGCPauseMillis=200 \
  -XX:ParallelGCThreads=4 \
  -jar BloodVeil-Server.jar
```

## 📝 Notes

- Server saves player data periodically
- Always backup `save_files/` before updating
- Keep old JAR as backup (script does this automatically)
- Monitor logs after deployment
- Announce server restarts to players

## 🆘 Emergency Recovery

If server won't start after update:

```bash
cd /root/bloodveil_server
pkill -9 -f BloodVeil-Server.jar
mv BloodVeil-Server.jar BloodVeil-Server.jar.broken
cp BloodVeil-Server.jar.backup_* BloodVeil-Server.jar
./start_vps_server.sh
```
