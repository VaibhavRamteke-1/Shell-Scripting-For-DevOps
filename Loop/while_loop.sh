#!/bin/bash

##While Loop
#Used when condition must be checked continuously

#Wait until service becomes active
while ! systemctl is-active --quiet docker
do
  echo "Waiting for docker to start..."
  sleep 5
done
echo "Docker is running"
#Use case: Wait for service before starting deployment.


#Monitor CPU continuously
while true
do
  top -b -n1 | head -5
  sleep 10
done
#Use case: Monitoring script.

#Wait until server becomes reachable
while ! ping -c 1 google.com &> /dev/null
do
  echo "Network not ready..."
  sleep 5
done
echo "Network connected"
