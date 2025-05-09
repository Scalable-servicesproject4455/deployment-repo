#!/bin/bash

set -e  # Exit on error

echo "🚀 Starting Deployment..."

# Step 01: Clone repositories
echo "📥 Cloning microservice repositories..."
git clone https://github.com/Scalable-servicesproject4455/temperature-service.git
git clone https://github.com/Scalable-servicesproject4455/assistant-service.git

# Step 02: Start services with Docker Compose
echo "🐳 Cleaning up old containers"
docker-compose down  # Clean up old containers
docker-compose up --build -d

