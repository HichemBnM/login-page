#!/bin/bash

echo "✅ Pulling latest changes..."
git pull origin main

echo "🚀 Deploying to host's web server directory..."
cp -r * /mnt/deploy/


