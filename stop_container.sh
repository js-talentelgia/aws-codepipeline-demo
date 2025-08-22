#!/bin/bash
set -e
# Get all container IDs
containers=$(docker ps -aq)

if [ -n "$containers" ]; then
  echo "Stopping containers..."
  docker stop $containers

  echo "Removing containers..."
  docker rm $containers
else
  echo "No containers found to stop or remove."
fi

echo "done"
