#!/bin/bash

#
#
#
clear
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo " "
echo "Bootstraping centos7_db.sh"
echo " "
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Installing mysql: ........................." && \
pkg=''
sudo yum clean all
sudo yum update -y && \
wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm && \
sudo rpm -ivh mysql-community-release-el7-5.noarch.rpm && \
pkg='mysql-server' || yum list installed $pkg >/dev/null && echo "--> $pkg installed." || yum install -y $pkg && \
pkg=mysql || yum list installed $pkg >/dev/null && echo "--> $pkg installed." || yum install -y $pkg
sudo yum update -y && \
sudo systemctl start mysqld && \
sleep 2 && \
echo "Configuring mysql" && \
sudo cp /etc/my.cnf /etc/my.cnf.old && \
sudo sed -i 's/^bind-address.*/bind-address = 192.168.32.8/' /etc/my.cnf && \
sudo diff -c /etc/my.cnf /etc/my.cnf.old && \
sudo systemctl stop mysqld && \
sudo systemctl start mysqld && \
sudo systemctl enable mysqld && \
sleep 2 && \
echo "Installing memcached: ........................." && \
pkg=memcached || yum list installed $pkg >/dev/null && echo "--> $pkg installed." || yum install -y $pkg
echo "Configuring memcached" && \
sudo systemctl restart memcached && \
sudo systemctl enable memcached
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "End Bootstraping..."
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
