#!/bin/bash

echo "===== SYSTEM MONITORING ====="
echo "Hostname: $(hostname)"
echo "User: $(whoami)"
echo "Date: $(date)"
echo ""

echo "Top 5 Processes by CPU:"
ps aux --sort=-%cpu | head -n 6
echo ""

echo "Memory Usage:"
free -h
echo ""

echo "Disk I/O Stats (iostat):"
iostat -x 1 3
echo ""

echo "Virtual Memory Stats (vmstat):"
vmstat 1 5
echo ""

echo "Interactive Process Monitor (htop will open):"
echo "Press q to exit htop"
htop

