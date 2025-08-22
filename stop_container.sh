#!/bin/bash
set -e

# 1. Remove all unused images
docker image prune -a -f

# 2. Stop all running containers
docker stop $(docker ps -q)

# 3. Remove all containers
docker rm $(docker ps -aq)

echo "done"
