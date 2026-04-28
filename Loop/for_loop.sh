#!/bin/bash

##When to use
#When you know the list or count
#Useful for multiple servers, services, files

#Restart multiple services
for service in nginx docker ssh
do
  systemctl restart $service
done

#Check status of multiple services
for service in nginx docker ssh
do
  echo "$service status:"
  systemctl is-active $service
done

#Check uptime on multiple servers
for server in server1 server2 server3
do
  ssh ubuntu@$server "uptime"
done

#Backup multiple directories
for dir in /etc /var /home
do
  tar -czf $dir-backup.tar.gz $dir
done

