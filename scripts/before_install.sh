#!/bin/bash

echo "==== BeforeInstall: Ensuring pm2 is installed... ===="
if ! command -v pm2 &> /dev/null
then
    echo "PM2 not found. Installing..."
    sudo npm install -g pm2
fi

echo "==== Stopping existing backend app (if running)... ===="
pm2 stop backend-app || echo "No running app to stop"
