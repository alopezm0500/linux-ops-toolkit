#!/usr/bin/env bash

SERVICE_NAME="$1"

if [ -z "$SERVICE_NAME" ]; then
  echo "Usage: $0 <service-name>"
  echo "Example: $0 ssh"
  exit 1
fi

echo "========================================"
echo "         SERVICE CHECK"
echo "========================================"

echo ""
echo "[INFO] Service status for: $SERVICE_NAME"
systemctl status "$SERVICE_NAME" --no-pager

echo ""
echo "[INFO] Recent logs for: $SERVICE_NAME"
journalctl -u "$SERVICE_NAME" --since "30 minutes ago" --no-pager

echo ""
echo "========================================"
echo "         END OF REPORT"
echo "========================================"
