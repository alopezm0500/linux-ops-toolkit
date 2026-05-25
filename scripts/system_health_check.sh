```bash
#!/usr/bin/env bash

echo "========================================"
echo "         SYSTEM HEALTH CHECK"
echo "========================================"

echo ""
echo "[INFO] Hostname:"
hostname

echo ""
echo "[INFO] Kernel:"
uname -r

echo ""
echo "[INFO] Uptime and load average:"
uptime

echo ""
echo "[INFO] Memory usage:"
free -h

echo ""
echo "[INFO] Disk usage:"
df -h

echo ""
echo "[INFO] Top 5 processes by CPU:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6

echo ""
echo "[INFO] Top 5 processes by Memory:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6

echo ""
echo "========================================"
echo "         END OF REPORT"
echo "========================================"
