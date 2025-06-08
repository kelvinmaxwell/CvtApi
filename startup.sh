#!/bin/bash

# Pull the latest images
docker  pull kelvinmaxwell/cvtserver-springboot-images:latest
docker  pull kelvinmaxwell/gateway-springboot-images:latest
docker  pull kelvinmaxwell/cvtserver-springboot-images
docker  pull kelvinmaxwell/towingambulance-springboot-images:latest
# Start the services
docker compose up -d

echo "Services have been started."
