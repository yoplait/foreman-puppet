#!/bin/bash

#
#
#

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo " "
echo "Bootstraping centos7_ssh.sh"
echo " "
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

echo "Configuring SSH"  && \

cat << 'EOF' >> /root/.ssh/config
Host *
    StrictHostKeyChecking no
EOF

mkdir /home/vagrant/.ssh  && \
chown vagrant:vagrant /home/vagrant/.ssh  && \

cat << 'EOF' >> /home/vagrant/.ssh/config 
Host *
    StrictHostKeyChecking no
EOF

chown vagrant:vagrant /home/vagrant/.ssh/config  && \
chmod 600 /home/vagrant/.ssh/config
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "End Bootstraping..."
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
