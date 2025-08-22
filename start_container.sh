#!/bin/bash
set -e

sudo su
# Pull the Docker image from Docker Hub
docker pull jagseersingh/codepipeline-demo

# Run the Docker image as a container
docker run -d -p 5000:5000 jagseersingh/codepipeline-demo