#! /bin/bash
curl --silent --location https://rpm.nodesource.com/setup_8.x | sudo bash -
sudo yum -y install nodejs
sudo yum -y install gcc-c++ make
sudo npm install -g iota-pm
sudo mv iota-pm.service /usr/lib/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable iota-pm
sudo systemctl start iota-pm
sudo systemctl status iota-pm
