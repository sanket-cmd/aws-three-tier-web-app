#!/bin/bash

echo "==== ApplicationStop: Stopping backend app with PM2... ===="
pm2 stop backend-app || echo "App not running"
