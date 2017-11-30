#! /bin/bash
# update first before install
# sudo yum update -y
sudo yum install epel-release -y
sudo yum install maven libappindicator -y
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u152-b16/aa0333dd3019491ca4f6ddbe78cdb6d0/jdk-8u152-linux-x64.rpm"
sudo yum localinstall jdk-8u152-linux-x64.rpm -y
git clone https://github.com/iotaledger/iri
git checkout master
sudo mv iri /var/lib
sudo mv installIRI.sh /var/lib/iri
sudo useradd -s /sbin/nologin -M -d /var/lib/iri iri
sudo chown iri.iri /var/lib/iri -R
sudo chmod 700 /var/lib/iri
sudo -u iri /var/lib/iri/installIRI.sh
