#!/bin/bash

set -e  # Exit on error

echo "🚀 Starting Deployment..."

# Function to clone a repo after deleting if it already exists
clone_fresh() {
  local repo_url=$1
  local repo_name=$(basename "$repo_url" .git)

  if [ -d "$repo_name" ]; then
    echo "🗑️ Removing existing folder: $repo_name"
    rm -rf "$repo_name"
  fi

  echo "📦 Cloning fresh copy of $repo_name..."
  git clone "$repo_url"
}

echo "🔁 Refreshing repositories..."

clone_fresh https://github.com/Scalable-servicesproject4455/temperature-service.git
clone_fresh https://github.com/Scalable-servicesproject4455/assistant-service.git
clone_fresh https://github.com/Scalable-servicesproject4455/light-service.git

echo "✅ All repositories cloned fresh."

# Step 02: Start services with Docker Compose
echo "🐳 Cleaning up old containers"
docker-compose down  # Clean up old containers
echo "🐳 Starting services with Docker Compose..."
docker-compose up --build -d

