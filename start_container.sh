#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull jagseersingh/codepipeline-demo

# Run the Docker image as a container
docker compose up -d