#!/bin/bash

echo "===== SYSTEM HEALTH CHECK ====="
echo "Hostname: $(hostname)"
echo "User: $(whoami)"
echo "Date: $(date)"
echo ""

echo "Uptime:"
uptime
echo ""

echo "Disk Usage:"
df -h
echo ""

echo "Memory Usage:"
free -h
echo ""

echo "Top 5 Processes by Memory:"
ps aux --sort=-%mem | head -n 6

