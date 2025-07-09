#!/bin/bash

echo "==== BeforeInstall: Stopping existing backend app (if running)... ===="
pm2 stop backend-app || echo "No running app to stop"
