#! /bin/bash
sudo mv iri.sysconfig /etc/sysconfig/iri
sudo mv iri.service /usr/lib/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable iri.service
sudo systemctl start iri.service
sudo systemctl status iri
