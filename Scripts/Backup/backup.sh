#!/bin/bash

#Script: Daily backup
#Author: Vaibhav Ramteke
#Description: Automate daily backup of application files

SOURCE_DIR="/var/log/myapp"
DESTINATION_DIR="/opt/backup"

# Check source directory
if [[ ! -d "$SOURCE_DIR" ]];then
	echo "Directory $SOURCE_DIR does not exist"
	exit 1
fi 

# Check source directory
if [[ ! -d "$DESTINATION_DIR" ]];then
        echo "Directory $DESTINATION_DIR does not exist"
        exit 1
fi

# Create timestamp
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)

# Backup file
BACKUP_FILE="$DESTINATION_DIR/backup_$TIMESTAMP.tar.gz"

# Create compressed backup
tar -czf "$BACKUP_FILE" -C "$SOURCE_DIR" .

echo "Backup completed successfully"
echo "Backup location: $BACKUP_FILE"
