#!/bin/bash

#Script: Multiple server patching
#Author: Vaibhav Ramteke
#Description: Multiple AWS server patching.

#Server List
SERVERS=("SERVER1" "SERVER2")

#SSH Key Pair.
KEY="/home/ubuntu/key.pem"

#Loop through the servers

for SERVER in "${SERVERS[@]}"
do
        echo "------------------------------"
        echo "Patching $SERVER"
        echo "------------------------------"
        
	# Check SSH connectivity
        ssh -i "$KEY" -o BatchMode=yes -o ConnectTimeout=5 "$SERVER" "echo Connected" &>/dev/null

	if [[ $? -ne 0 ]]; then
        echo "Failed to connect to $SERVER"
        continue
        fi

	# Run patching commands
        ssh -i $KEY -o StrictHostKeyChecking=no "$SERVER" <<EOF

                echo "Updating Packages..."
                sudo apt update -y

                echo "Upgrading Packages..."
                sudo DEBIAN_FRONTEND=noninteractive apt upgrade -y

                echo "Removing unused packages..."
                sudo apt autoremove -y

                echo "Done on $(hostname)"

                if [ -f /var/run/reboot-required ]; then
                echo "Reboot required $(hostname)"
                sudo reboot
                fi

EOF

done

echo "All servers patched successfully"
