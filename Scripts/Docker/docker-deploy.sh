#!/bin/bash

#Script: Docker Deploy
#Author: Vaibhav Ramteke
#Description: Deploy container to the server

APP="myapp"

echo "Stopping old container..."

docker stop $APP || true
docker rm $APP || true

echo "Starting new container..."

docker run -d -p 8080:8080 --name $APP $APP:latest
