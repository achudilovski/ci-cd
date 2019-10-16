#!/bin/bash
sudo yum -y install git maven java-1.8.0-openjdk-devel wget unzip jq
# docker
sudo amazon-linux-extras install -y docker
sudo systemctl enable docker
sudo systemctl start docker
sudo usermod -aG docker ec2-user
sudo chmod 777 /var/run/docker.sock
# docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
# terraform
sudo wget https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_linux_amd64.zip
sudo unzip terraform_0.11.13_linux_amd64.zip
sudo mv terraform /usr/local/bin
sudo rm -f terraform_0.11.13_linux_amd64.zip
# dotnet
sudo rpm -Uvh https://packages.microsoft.com/config/rhel/7/packages-microsoft-prod.rpm
sudo yum -y install dotnet-sdk-2.2
# node
sudo curl -sL https://rpm.nodesource.com/setup_10.x | sudo bash -
sudo yum -y install nodejs
















