#!/bin/bash

# Read BACKEND_HOST and BACKEND_PORT from environment variables
BACKEND_HOST="${BACKEND_HOST:-http://localhost}"
BACKEND_PORT="${BACKEND_PORT:-5000}"

# Update and install Nginx
sudo apt update
sudo apt install -y nginx

# Check if Nginx is installed and start it
if [ -f "/etc/init.d/nginx" ]; then
    sudo /etc/init.d/nginx start
else
    echo "Nginx installation failed."
    exit 1
fi

# Replace placeholder in index.html with actual backend address
sed -i "s|http://localhost:5000|${BACKEND_HOST}:${BACKEND_PORT}|g" index.html

# Copy the updated index.html to Nginx's serving directory
sudo cp index.html /var/www/html/index.html

# Restart Nginx to apply changes
sudo systemctl restart nginx

echo "Frontend deployed successfully, and Nginx is serving it."
