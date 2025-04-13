#!/bin/bash
set -e  # Stop on error

echo "➡️ Switching to project directory..."
cd /var/www/html/login-page

echo "⬇️ Pulling latest changes from GitHub..."
git checkout main
git pull origin main

echo "🚀 App updated!"

# Optionally restart app if needed (Node.js example):
# npm install
# pm2 restart app.js

echo "✅ Deployment complete."
