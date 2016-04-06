#!/bin/bash

#
#
#
clear
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo " "
echo "Bootstraping centos7_puppet.sh"
echo " "
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

sudo yum clean all && \
sudo yum update -y && \

# sudo rpm -Uvh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm && \
# sudo rpm -ivh http://yum.puppetlabs.com/el/7/products/x86_64/puppetlabs-release-7-11.noarch.rpm && \
# sudo rpm -ivh http://yum.puppetlabs.com/el/7/products/x86_64/puppetlabs-release-7-10.noarch.rpm && \
# sudo rpm -ivh http://yum.puppetlabs.com/el/7/products/x86_64/puppet-3.6.2-1.el7.noarch.rpm && \
# sudo rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm
# sudo rpm -ivh  https://yum.puppetlabs.com/el/7Client/products/x86_64/puppet-3.8.6-1.el7.noarch.rpm && \

sudo rpm -ivh http://yum.puppetlabs.com/el/7/products/x86_64/puppetlabs-release-7-11.noarch.rpm && \

# sudo yum -y install puppet-agent
# sudo yum install -y puppet-agent && \
# yum install -y puppet-agent.x86_64

yum install -y puppet


echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "End Bootstraping..."
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
