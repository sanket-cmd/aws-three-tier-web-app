#!/bin/bash

echo "==== ApplicationStart: Starting backend app with PM2... ===="
cd /home/ubuntu/app

# Replace "index.js" with your main backend entry file if different
pm2 start index.js --name "backend-app"

# Save the PM2 process list to resurrect on reboot
pm2 save

