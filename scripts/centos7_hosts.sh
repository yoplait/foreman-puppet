#!/bin/bash

#
#
#

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo " "
echo "Bootstraping centos7_git.sh"
echo " "
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

# Configure /etc/hosts file
echo "" | sudo tee --append /etc/hosts 2> /dev/null && \
echo "# Host config for Puppet Master and Agent Nodes" | sudo tee --append /etc/hosts 2> /dev/null && \
echo "192.168.32.5  foreman.puppetruns.local foreman.puppetruns foreman" | sudo tee --append /etc/hosts 2> /dev/null && \
echo "192.168.32.6  db.puppetruns.local db.puppetruns db" | sudo tee --append /etc/hosts 2> /dev/null && \
echo "192.168.32.10  puppet.puppetruns.local puppet.puppetruns puppet" | sudo tee --append /etc/hosts 2> /dev/null && \
echo "192.168.32.15  node01.puppetruns.local node01.puppetruns node01" | sudo tee --append /etc/hosts 2> /dev/null && \


echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "End Bootstraping..."
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
