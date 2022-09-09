#!/bin/bash 
yum update -y 
yum install -y httpd.x86_64 
systemctl start httpd.service 
systemctl enable httpd.service
git clone https://github.com/Akiranred/candy-crush.git  /var/www/html
