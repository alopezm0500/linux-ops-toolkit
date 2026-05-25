#!/usr/bin/env bash

echo "========================================"
echo "       PORTS AND PROCESSES REPORT"
echo "========================================"

echo ""
echo "[INFO] Listening ports:"
ss -tulpn

echo ""
echo "[INFO] Top 10 processes by CPU:"
ps -eo pid,user,cmd,%mem,%cpu --sort=-%cpu | head -n 11

echo ""
echo "[INFO] Top 10 processes by Memory:"
ps -eo pid,user,cmd,%mem,%cpu --sort=-%mem | head -n 11

echo ""
echo "========================================"
echo "         END OF REPORT"
echo "========================================"
