#!/bin/bash

# Preparation Metasploitable2
echo 'install docker -->>'

sudo apt install curl -y
sudo apt install git -y

#install docker
sudo apt-get update -y
sudo apt-get remove docker docker-engine docker.io

sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker

echo 'pull docker images -->>'
#pull docker file
sudo docker pull sauravbrahma/metasploit_image
sudo docker pull tleemcjr/metasploitable2

echo 'build an environment with docker -->>'
#build an environment with docker
sudo docker run --rm -d tleemcjr/metasploitable2:latest sh -c "/bin/services.sh && bash"
#docker run --rm -d sauravbrahma/metasploit_image:latest bash
sudo docker run sauravbrahma/metasploit_image /bin/bash/ -c "msfconsole"

echo 'INPUT "$docker run --rm -it sauravbrahma/metasploit_image bash 
 && $msfconsole " TO START METASPLOITABLE2'
#manage docker ad a non-root user
sudo gpasswd -a $USER docker
newgrp docker
echo ENJOY :P

# Preparation OpenVAS
sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get install openvas
sudo openvas-setup

# Ref: https://www.secure-iv.co.jp/blog/587
