#!/bin/bash
set -e  # Exit on errors

cd /var/www/html/login-page
git checkout main
git pull origin main

echo "✅ Repo updated!"

# Add app build/start logic here if needed
