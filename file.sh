#!/bin/bash
sudo apt-get install apache2
sudo service apache2 start
sudo apt-get install mysql-client mysql-server
sudo apt-get install php7.0 php7.0-mysql libapache2-mod-php7.0 php7.0-cli php7.0-cgi php7.0-gd
cd /
cd  /var/www/html/
sudo rm -f info.php
sudo touch info.php
sudo chmod 777 info.php
echo  "<?php phpinfo(); ?>" > info.php
cd /
cd var/www/html/
sudo git clone https://github.com/WordPress/WordPress
cd /
cd var/www/html/WordPress
sudo mv * /var/www/html
sudo chown -R www-data:www-data /var/www/html/
sudo chmod -R 755 /var/www/html/
cd /
cd var/www/html
sudo mv wp-config-sample.php wp-config.php
echo "enter the database name"
read dbname;
echo "enter the user name"
read uname;
echo "create database $dbname;\
grant all privileges on $dbname.* To '$uname'@'localhost' Identified  by '72mus$
flush privileges;\
exit " | mysql -u root -p72muskan
sudo chmod 777 wp-config.php
nano wp-config.php
