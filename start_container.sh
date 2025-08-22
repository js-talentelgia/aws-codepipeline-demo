#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull jagseersingh/codepipeline-demo

# Stop any container running on port 5000 (if exists)
docker ps -q --filter "ancestor=jagseersingh/codepipeline-demo" | xargs -r docker stop
docker ps -aq --filter "ancestor=jagseersingh/codepipeline-demo" | xargs -r docker rm

# Run the Docker image as a container
#docker run -d -p 5000:5000 jagseersingh/codepipeline-demo
 docker compose up -d