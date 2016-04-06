#!/bin/bash

#
#
#
clear
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo " "
echo "Bootstraping centos7_foreman.sh"
echo " "
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

sudo yum clean all && \
sudo yum update -y && \

sudo yum install -y epel-release http://yum.theforeman.org/releases/1.11/el7/x86_64/foreman-release.rpm && \

pkg=foreman-installer || yum list installed $pkg >/dev/null && echo "--> $pkg installed." || yum install -y $pkg

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "End Bootstraping..."
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
