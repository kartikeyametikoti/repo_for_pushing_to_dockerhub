#!/bin/bash
set -e  # Exit immediately if a command exits with a non-zero status

# List all running Docker containers and stop & remove them one by one
sudo docker ps | awk 'NR>1 { print $1 }' | while read -r container_id; do
    echo "Stopping container: $container_id"
    sudo docker stop "$container_id"
    echo "Removing container: $container_id"
    sudo docker rm "$container_id"
done

echo "All running containers have been stopped and removed."



