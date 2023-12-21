#!/bin/sh

DOMAIN="ats.xyz";

sudo apt -y update;
sudo apt -y dist-upgrade;
sudo apt -y autoremove;
sudo apt -y autoclean;

sudo apt -y install apache2 certbot python3-certbot-apache;

sudo ufw allow "Apache Full";
sudo ufw status;

sudo mkdir /var/www/$DOMAIN;
sudo chown -R $USER:$USER /var/www/$DOMAIN;
sudo chmod -R 755 /var/www/$DOMAIN;

sudo copy -pvr ./ats_image_server.conf /etc/apache2/sites-available/;
copy -pvr ./index.html /var/www/$DOMAIN;
copy -pvr ./images /var/www/$DOMAIN/;

sudo apache2ctl configtest;
sudo a2ensite ats_image_server.conf;
sudo a2dissite 000-default.conf;


# docker build -t ats_img_server;
# docker run -dit --name ats_img_server -p 8080:80 ats_img_server;
