#!/bin/bash

#Script: Docker Build
#Author: Vaibhav Ramteke
#Description: Docker Image created	

APP_NAME="myapp"
VERSION=$(date +%Y%m%d%H%M)

echo "Building Docker image..."

docker build -t $APP_NAME:$VERSION .

echo "Docker image created: $APP_NAME:$VERSION"

#Used in: CI pipelines.
