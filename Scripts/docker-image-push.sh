#!/bin/bash

#Script: Docker Image Push
#Author: Vaibhav Ramteke
#Description: Docker Image Push to the registry


IMAGE="myapp"
TAG="latest"

echo "Pushing image to Docker registry..."

docker tag $IMAGE $IMAGE:$TAG
docker push $IMAGE:$TAG

#Use case:Store images in registry before deployment.
