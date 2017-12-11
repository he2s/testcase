#!/bin/bash

sudo useradd qosit
sudo passwd qosit
sudo mkdir /home/qosit
sudo chown qosit /home/qosit
sudo usermod -aG ssh qosit
sudo usermod -aG docker qosit
sudo usermod -aG sudo qosit
sudo systemctl enable ssh
sudo systemctl enable docker
sudo systemctl start ssh
sudo systemctl start docker
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install tmux vlock wget curl nmap zsh fish htop sysstat
sudo apt-get install docker.io
sudo apt-get install python
sudo apt-get install python-pip
sudo pip install docker-compose
sudo chmod a+wrx /usr/local/bin/docker-compose
sudo cp /home/qosit/bin/testcase.service /lib/systemd/system/testcase.service
sudo systemctl enable testcase
sudo systemctl start testcase
