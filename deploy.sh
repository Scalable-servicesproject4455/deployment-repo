#!/bin/bash

set -e  # Exit on error

echo "🚀 Starting Deployment..."

# Step 01: Clone repositories
echo "📥 Cloning microservice repositories..."
#!/bin/bash

# Function to clone a repo if the directory does not exist
clone_if_missing() {
  local repo_url=$1
  local repo_name=$(basename "$repo_url" .git)

  if [ -d "$repo_name" ]; then
    echo "Skipping clone: $repo_name already exists."
  else
    echo "📦 Cloning $repo_name..."
    git clone "$repo_url"
  fi
}

echo "🔁 Starting repository checks..."

clone_if_missing https://github.com/Scalable-servicesproject4455/temperature-service.git
clone_if_missing https://github.com/Scalable-servicesproject4455/assistant-service.git
clone_if_missing https://github.com/Scalable-servicesproject4455/light-service.git

echo "🚀 All repositories are ready."

# Step 02: Start services with Docker Compose
echo "🐳 Cleaning up old containers"
docker-compose down  # Clean up old containers
echo "🐳 Starting services with Docker Compose..."
docker-compose up --build -d

