#! /bin/bash
sudo yum update -y
sudo yum install git -y  || exit $?
git clone https://github.com/bertux/iota-deploy.git || exit $?
cd iota-deploy
./install0.sh
sudo -u iri /var/lib/iri/installIRI.sh
# installSwap.sh
./installService.sh
./installPeerManager.sh
