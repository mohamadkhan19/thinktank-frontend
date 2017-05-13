-#!/bin/sh
ssh ubuntu@ip-172-31-15-68 <<EOF
cd /home/ubuntu/praveen/thinktank 
ps -ef | grep grunt | grep -v grep | awk '{print $2}' | xargs kill
sudo git pull       
sudo npm restart&
 exit       
EOF
