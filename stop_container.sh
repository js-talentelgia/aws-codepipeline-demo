#!/bin/bash
set -e

sudo su

# Get all container IDs
docker compose down

echo "done"
