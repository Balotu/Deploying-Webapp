#!/bin/bash
apt update -y && apt upgrade -y
apt install -y nginx
rm -f /var/www/html/index.nginx-debian.html
git clone https://github.com/Balotu/Deploying-Webapp.git /var/www/html
chown -R www-data:www-data /var/www/html
chmod -R 755 /var/www/html
systemctl restart nginx
systemctl enable nginx
