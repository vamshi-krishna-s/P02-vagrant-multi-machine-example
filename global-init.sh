#!/bin/bash

echo "-----------------------START OF GLOBAL SCRIPT-----------------------------"
echo "-----------------------Login as a sudo User: vagrant-----------------------------"
sudo -i
whoami


echo "-----------------------update the deb package repository list and install dependencies-----------------------------"
apt-get update
apt-get install -y apache2 wget unzip


echo "-----------------------start and enable apache web service-----------------------------"
systemctl start apache2
systemctl enable apache2
systemctl status --no-pager apache2

echo "-----------------------END OF GLOBAL SCRIPT-----------------------------"



