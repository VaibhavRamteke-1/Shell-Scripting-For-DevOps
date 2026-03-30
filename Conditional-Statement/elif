#!/bin/bash

# Script: Student Result Classification
# Author: Vaibhav Ramteke
# Description: Classifies result based on marks using if-elif-else

read -p "Enter your marks: " marks

# Validate input (must be a number)
if ! [[ "$marks" =~ ^[0-9]+$ ]]; then
    echo "Invalid input! Please enter numeric marks."
    exit 1
fi

# Validate range (0–100)
if [[ "$marks" -lt 0 || "$marks" -gt 100 ]]; then
    echo "Marks should be between 0 and 100."
    exit 1
fi

# Result logic
if [[ $marks -ge 80 ]];
then
	echo "RESULT: FIRST DIVISION"
elif [[ $marks -ge 60 ]];
then
	echo "RESULT: SECOND DIVISION"
elif [[ $marks -ge 40 ]];
then
	echo "RESULT: THIRD DIVISION"
else	
	echo "RESULT: FAIL"
fi
