#!/bin/bash

# Loop through each line of the inventory file
while read host; do
    # Perform the ping check and store the result
    # result=$(ping -c 1 "$host" 2>&1)
	result=$( ping -c 1 $host | grep "packet loss" | cut -d , -f 3 | cut -d "." -f 1  )
    # Check the result and print the appropriate message
    # if [[ $result == *"1 packets transmitted, 1 received"* ]]; then
    if [[ $result -ne "100" ]]; then
        echo "$host is up"
    else
        echo "$host is down"
    fi
done < inventory.txt


# for i in `cat inventory.txt`
# # do  
# #   ping -c 2 $host | grep "packet loss" | cut -d , -f 3 | cut -d "." -f 1 
# # done
# do
#   ping -c1 -w2 $i >/dev/null 2>&1 ; echo $i $?
# done


