#! /bin/bash
sudo fallocate -l 8G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
swapon -s
sudo su -c 'echo "/swapfile   swap    swap    sw  0   0" >> /etc/fstab'
