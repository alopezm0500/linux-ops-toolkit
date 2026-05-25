#!/usr/bin/env bash

echo "========================================"
echo "         RESOURCE REPORT"
echo "========================================"

echo ""
echo "[INFO] CPU information:"
lscpu | grep -E 'Model name|CPU\(s\)|Thread|Core|Socket'

echo ""
echo "[INFO] Memory and swap:"
free -h

echo ""
echo "[INFO] Disk usage by filesystem:"
df -h

echo ""
echo "[INFO] Top 10 directories in current path:"
du -sh ./* 2>/dev/null | sort -hr | head -n 10

echo ""
echo "========================================"
echo "         END OF REPORT"
echo "========================================"
