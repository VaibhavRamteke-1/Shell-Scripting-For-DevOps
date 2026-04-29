#!/bin/bash


read -p "Enter username to create user: " username

#Validate username
if [[ -z "$username" ]];then
	echo "Username cannot be empty"
	exit 1
fi

read -s -p "Enter password for user: " password
echo

if id "$user" &>/dev/null;
then	
	echo "User already exist"
else
	echo "Creating user"
	sudo useradd -m $user	
	echo "$user:$password" | sudo chpasswd
	echo "User '$user' created successfully"
fi	
