#!/bin/bash

# Exit script if any command fails
set -euo pipefail

# -----------------------------
# Variables
# -----------------------------

AMI_ID="ami-06e3c045d79fd65d9"
INSTANCE_TYPE="t3.micro"
KEY_NAME="shell_accessKeys.csv"
SECURITY_GROUP="sg-080332f5917ed01010"
SUBNET_ID="subnet-05f3cd67fd2c6c157"
REGION="us-east-2"
INSTANCE_NAME="DevOps-Servers"

# -----------------------------
# Script Start
# -----------------------------

echo "Starting EC2 instance creation..."

# Create EC2 instance
INSTANCE_ID=$(aws ec2 run-instances \
--image-id "$AMI_ID" \
--count 1 \
--instance-type "$INSTANCE_TYPE" \
--key-name "$KEY_NAME" \
--security-group-ids "$SECURITY_GROUP" \
--subnet-id "$SUBNET_ID" \
--region "$REGION" \
--tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$INSTANCE_NAME}]" \
--query 'Instances[0].InstanceId' \
--output text)

# Check if instance created
if [ -z "$INSTANCE_ID" ]
then
    echo "EC2 instance creation failed"
    exit 1
fi

echo "EC2 Instance created successfully"
echo "Instance ID: $INSTANCE_ID"

# Wait until instance is running
echo "Waiting for instance to enter running state..."

aws ec2 wait instance-running \
--instance-ids "$INSTANCE_ID" \
--region "$REGION"

echo "Instance is now running."

# Get public IP
PUBLIC_IP=$(aws ec2 describe-instances \
--instance-ids "$INSTANCE_ID" \
--region "$REGION" \
--query 'Reservations[0].Instances[0].PublicIpAddress' \
--output text)

echo "Public IP of instance: $PUBLIC_IP"

echo "EC2 setup completed successfully!"
