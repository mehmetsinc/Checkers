while read host; do
    # Attempt to SSH to the host
    ssh -q -o ConnectTimeout=5 -o StrictHostKeyChecking=no user@"$host" exit
    # Check the exit status of the SSH command
    if [ $? -eq 0 ]; then
        echo "$host is reachable via SSH"
    else
        echo "$host is not reachable via SSH"
    fi
done < inventory.txt
