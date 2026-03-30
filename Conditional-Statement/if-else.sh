#!/bin/bash

# Script: Check Pass or Fail based on marks
# Author: Vaibhav Ramteke
# Description: This script takes user input and checks if the student has passed or failed.

read -p "Enter your marks: " marks

# Validate input (check if number)
if ! [[ "$marks" =~ ^[0-9]+$ ]]; then
    echo "Invalid input! Please enter a numeric value."
    exit 1
fi

if [[ $marks -gt 40 ]]
then
        echo "Result: PASS"
else
        echo "Result: FAIL"
fi
