#!/bin/bash
sudo yum update -y
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd
sudo yum install -y git
sudo git clone https://github.com/Akiranred/mario.git /var/www/html
