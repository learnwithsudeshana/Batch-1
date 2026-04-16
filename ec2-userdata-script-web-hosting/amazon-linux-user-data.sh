#!/bin/bash

# Update system
yum update -y

# Install Apache web server
yum install -y httpd

# Start Apache service
systemctl start httpd
systemctl enable httpd

# Get hostname
HOSTNAME=$(hostname -f)

# Create web page with hostname
echo "<h1>Welcome to EC2 Web Server</h1><h2>Hostname: $HOSTNAME</h2>" > /var/www/html/index.html

# Restart Apache
systemctl restart httpd
