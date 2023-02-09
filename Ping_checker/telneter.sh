#!/bin/bash

# Loop through each line of the inventory file
while read host; do
    # Attempt to telnet to the host on port 22
    (echo > /dev/tcp/"$host"/22) &>/dev/null
    # Check the exit status of the telnet command
    if [ $? -eq 0 ]; then
        echo "$host is reachable on port 22 via telnet"
    else
        echo "$host is not reachable on port 22 via telnet"
    fi
done < inventory.txt
