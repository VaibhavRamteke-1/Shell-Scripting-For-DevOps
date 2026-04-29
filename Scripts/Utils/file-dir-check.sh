#!/bin/bash

# Script: File & Directory Checker
# Description: Identifies whether input is file, directory, or invalid path

read -p "Enter path: " path

if [[ -e "$path" ]]; then
    if [[ -f "$path" ]]; then
        echo "It is a file 📄"
    elif [[ -d "$path" ]]; then
        echo "It is a directory 📁"
    else
        echo "It exists but is neither regular file nor directory"
    fi
else
    echo "Path does not exist ❌"
fi
