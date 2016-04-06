#!/bin/bash

#
#
#

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo " "
echo "Bootstraping centos7_git.sh"
echo " "
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

# mysql

sudo mysql -e "CREATE DATABASE foreman CHARACTER SET utf8;" && \
sudo mysql -e "CREATE USER "foreman"@"foreman.domain";" && \
sudo mysql -e "GRANT ALL PRIVILEGES ON foreman.* TO 'foreman'@'foreman.domain' IDENTIFIED BY 'foreman_password';" && \
sudo mysql -e "CREATE USER 'foreman'@'foreman-enc.wit.prod';" && \
sudo mysql -e "GRANT ALL PRIVILEGES ON foreman.* TO 'foreman'@'foreman-enc.domain' IDENTIFIED BY 'foreman_password';" && \
sudo mysql -e "CREATE USER 'foreman'@'foreman-reports.wit.prod';" && \
sudo mysql -e "GRANT ALL PRIVILEGES ON foreman.* TO 'foreman'@'foreman-reports.domain' IDENTIFIED BY 'foreman_password';" && \

# mysql

sudo cp /etc/memcached.conf /etc/memcached.conf.old && \
sudo sed -i 's/^-m 64.*/-m 128/' /etc/memcached.conf && \
sudo sed -i 's/^-l 127.0.0.1.*/-l 0.0.0.0/' /etc/memcached.conf
sudo diff -c /etc/memcached.conf /etc/memcached.conf.old


echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "End Bootstraping..."
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
