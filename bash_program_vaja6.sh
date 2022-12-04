#!/bin/bash
mkdir Desktop Documents Downloads Music Pictures Public Templates Videos
for i in 1 2 3 4 5
do
    mkdir folder_$i
done
for i in 1 2 3 4 5
do
    sudo adduser user_$i
    sudo adduser user_$i sudo
done
sudo apt-get update
sudo apt-get upgrade
sudo apt-get update
sudo apt-get install ufw
sudo ufw enable
systemctl status ufw
sudo apt-get update
sudo apt-get install git
dpkg -s git
sudo apt-get update
sudo apt-get install net-tools
dpkg -s net-tools
sudo apt-get update
sudo apt-get install nginx
systemctl status nginx
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyring>
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://downlo>
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo docker run hello-world
