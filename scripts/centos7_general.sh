#!/bin/bash

#
#
#
clear
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo " "
echo "Bootstraping centos7_general.sh"
echo " "
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

sudo yum clean all && \
sudo yum install -y nano  && \
sudo yum install -y screen  && \
sudo yum install -y wget  && \
sudo yum install -y curl  && \
sudo yum install -y traceroute  && \
sudo yum install -y tree  && \
sudo yum install -y ntp && \
sudo yum install -y mlocate && \
sudo updatedb && \

pkg=mysql-community-client || yum list installed $pkg >/dev/null && echo "--> $pkg installed." || yum install -y $pkg && \

sudo timedatectl set-timezone Europe/Dublin && \
sudo timedatectl

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "End Bootstraping..."
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
