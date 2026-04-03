#!/bin/bash

#Script: Auto Restart
#Author: Vaibhav Ramteke
#Description: Restart docker service automatically when down

if systemctl is-active --quiet docker; then
	echo "Docker is running"
else
	echo "Docker is not running, restarting it"
	sudo systemctl restart docker

	# Verify restart
    	if systemctl is-active --quiet docker; then
        	echo "Docker restarted successfully"
	else
      		echo "Failed to restart Docker"
	fi	
fi	
