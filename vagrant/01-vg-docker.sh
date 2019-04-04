#!/bin/bash
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y http://ftp.riken.jp/Linux/cern/centos/7/extras/x86_64/Packages/container-selinux-2.9-4.el7.noarch.rpm
sudo yum install -y docker-ce docker-ce-cli containerd.io
sudo systemctl enable docker
sudo systemctl start docker
sudo usermod -aG docker jenkins
sudo usermod -aG docker vagrant
sudo chmod 777 /var/run/docker.sock