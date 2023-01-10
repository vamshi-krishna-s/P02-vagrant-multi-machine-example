#!/bin/bash

echo "-----------------------START OF WEB1 SCRIPT-----------------------------"
echo "-----------------------go to the tmp directory and download html templates with wget-----------------------------"
cd /tmp
pwd
rm -rf html-templates.zip
wget https://www.tooplate.com/zip-templates/2114_pixie.zip -O html-templates.zip

echo "-----------------------unzip the downlaoded templates and move templates to /var/www/http/-----------------------------"
cd /tmp
rm -rf html-templates
ls -l | grep html-templates
unzip -o html-templates.zip -d html-templates
cd html-templates
cd *
pwd
mv -f ./* /var/www/html/

echo "-----------------------restart the apache service-----------------------------"
systemctl restart apache2

echo "ip address: "
ip addr show | grep "scope global eth1"

echo "-----------------------END OF WEB1 SCRIPT-----------------------------"
