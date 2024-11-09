#!/bin/bash

# Pull the latest images
docker compose pull

# Start the services
docker compose up -d

echo "Services have been started."
