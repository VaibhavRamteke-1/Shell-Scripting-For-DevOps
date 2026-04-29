#!/bin/bash

#Script: Docker CleanUp
#Author: Vaibhav Ramteke
#Description: Cleaning unused Docker images

echo "Cleaning unused Docker images..."

docker container prune -f
docker image prune -f
docker volume prune -f

echo "Cleanup completed"

#Use case: Prevent disk full issues on CI servers.
