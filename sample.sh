#!/bin/bash


sudo apt update 

sudo apt install unzip wget figlet apache2 -y

sudo systemctl start apache2

mkdir website

cd website

wget https://www.tooplate.com/zip-templates/2103_central.zip
 

unzip 2103_central.zip

sudo cp -r 2103_central/* /var/www/html

cd ..

sudo rm -rf website 

sudo systemctl restart apache2
