#!/bin/bash

set -e

# Define paths
GIT_DIR="/var/jenkins_home/workspace/github"
WEB_DIR="/var/www/html"

# Optional: log start
echo "📥 Pulling latest changes from GitHub..."

# Go to your Jenkins workspace
cd "$GIT_DIR"

# Pull latest from GitHub (Jenkins already does this normally)
git pull origin main

# Optional: clean old files from web dir
# rm -rf "$WEB_DIR"/*

echo "📤 Deploying to web server..."
docker cp jenkins:/var/jenkins_home/workspace/github /var/www/html/
systemctl restart your-app.service
echo "✅ Deployment complete!"


