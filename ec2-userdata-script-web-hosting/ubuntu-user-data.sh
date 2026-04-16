#!/bin/bash

# Update system
apt update -y

# Install Apache
apt install -y apache2

# Start Apache
systemctl start apache2
systemctl enable apache2

# Get hostname
HOSTNAME=$(hostname -f)

# Create web page
echo "<h1>Welcome to Ubuntu EC2 Web Server</h1><h2>Hostname: $HOSTNAME</h2>" > /var/www/html/index.html

# Restart Apache
systemctl restart apache2
