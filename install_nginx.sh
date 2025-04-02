#!/bin/bash

# This script installs Nginx on a Linux system and configures it to serve a simple HTML page.

sudo apt-get update
sudo apt-get install -y nginx
sudo systemctl start nginx
sudo systemctl enable nginx
sudo systemctl status nginx


# Create a simple HTML page
echo "<html>
<head>
    <title>Welcome to Nginx!</title>
</head>
<body>
    <h1>Hello, Nginx!</h1>
    <p>This is a simple HTML page served by Nginx.</p>
</body>
</html>" | sudo tee /var/www/html/index.html

