#!/bin/bash
yum install -y httpd
chkconfig httpd on
service httpd start
echo "<html><h1>Welcome</h1><p>" > /var/www/html/index.html
echo "<h3>My Public IP is: "$(curl -s http://169.254.169.254/latest/meta-data/public-ipv4/)'</h3>' >> /var/www/html/index.html
echo "<h3>My Private IP is: "$(curl -s http://169.254.169.254/latest/meta-data/placement/availability-zone/)'</h3></html>' >> /var/www/html/index.html
