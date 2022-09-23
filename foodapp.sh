#!/bin/bash
sudo yum update -y
sudo yum install git -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
sudo git clone https://github.com/kaushal-90/food.git /var/www/html/
