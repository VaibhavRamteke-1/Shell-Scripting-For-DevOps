#!/bin/bash

#Script: Log cleanup
#Author: Vaibhav Ramteke
#Description: Delete .log files older than 7 days.

LOG_DIR="/var/log/myapp"

#Check if directory exists
if [[ ! -d "$LOG_DIR" ]];then
	echo "Directory "$LOG_DIR" does not exist"
	exit 1
fi	

echo "Cleaning logs older than 7 days in $LOG_DIR..."

# Find and delete old logs
find $LOG_DIR -type f -name "*.log" -mtime +7 -exec rm -f {} \;

echo "Old logs deleted successfully"
