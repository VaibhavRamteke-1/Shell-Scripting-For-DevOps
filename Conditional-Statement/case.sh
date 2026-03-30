#!/bin/bash

# Script: System Utility Menu using Case Statement
# Author: Vaibhav Ramteke
# Description: Menu-driven script to perform basic system operations

echo "===== System Utility Menu ====="
echo "1. Check Disk Usage"
echo "2. Check Memory Usage"
echo "3. Check System Uptime"
echo "4. Check Current Users"
echo "5. Exit"
echo "================================"

read -p "Enter your choice [1-5]: " choice

case $choice in
    1)
        echo "Disk Usage:"
        df -h
        ;;
    2)
        echo "Memory Usage:"
        free -h
        ;;
    3)
        echo "System Uptime:"
        uptime
        ;;
    4)
        echo "Logged-in Users:"
        who
        ;;
    5)
        echo "Exiting script..."
        exit 0
        ;;
    *)
        echo "Invalid choice! Please select between 1 to 5."
        exit 1
        ;;
esac
