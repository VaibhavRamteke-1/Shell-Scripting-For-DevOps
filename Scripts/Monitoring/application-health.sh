#!/bin/bash

#Script: Application Health
#Author: Vaibhav Ramteke
#Description: Application health checkup

URL="http://localhost:8080"

STATUS=$(curl -s -o /dev/null -w "%{http_code}" $URL)

if [ $STATUS -eq 200 ]
then
    echo "Application is healthy"
else
    echo "Application failed health check"
    exit 1
fi

