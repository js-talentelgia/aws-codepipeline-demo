#!/bin/bash

sudo su - root
# 1. Remove all unused images (safe)
docker image prune -a -f || true

# 2. Stop all running containers (only if there are any)
if [ "$(docker ps -q)" ]; then
    docker stop $(docker ps -q) || true
fi

# 3. Remove all containers (only if there are any)
if [ "$(docker ps -aq)" ]; then
    docker rm -f $(docker ps -aq) || true
fi

echo "✅ Cleanup complete....."
