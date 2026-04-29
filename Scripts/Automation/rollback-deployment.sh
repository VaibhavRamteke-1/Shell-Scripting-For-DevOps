#!/bin/bash

#Script: Rollback Deployment
#Author: Vaibhav Ramteke
#Description: Rollback to the last working version

PREVIOUS_VERSION=$1

echo "Rolling back to version $PREVIOUS_VERSION"

docker stop myapp
docker rm myapp

docker run -d -p 8080:8080 --name myapp myapp:$PREVIOUS_VERSION

#Real-life use: Used in CI/CD rollback pipelines.
