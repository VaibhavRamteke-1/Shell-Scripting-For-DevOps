#!/bin/bash

#Script: CI/CD
#Author: Vaibhav Ramteke
#Description: CI/CD Flow

echo "Starting CI/CD pipeline..."

echo "Step 1: Pull code"
git pull origin main

echo "Step 2: Build Docker image"
docker build -t myapp .

echo "Step 3: Push Docker image"
docker push myapp

echo "Step 4: Deploy to Kubernetes"
kubectl apply -f deployment.yaml

echo "Pipeline completed"
