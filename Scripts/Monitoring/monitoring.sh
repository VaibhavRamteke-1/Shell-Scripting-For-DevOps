#!/bin/bash

#Script: Monitoring
#Author: Vaibhav Ramteke
#Description: Monitored for CPU, memory, and disk usage.

CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
MEM=$(free -m | awk 'NR==2{printf "%.2f", $3*100/$2}')
DISK=$(df -h / | awk 'NR==2 {print $5}')

echo "CPU Usage: $CPU%"
echo "Memory Usage: $MEM%"
echo "Disk Usage: $DISK"

#Use case: Run with cron, Send alerts if usage exceeds threshold.
