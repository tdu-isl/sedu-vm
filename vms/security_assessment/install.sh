#!/bin/bash

# Install docker
echo 'checking docker version ... '
docker --version
if [ $? -ne 0 ]; then
  echo 'Docker Version Request Error!'
  echo 'Installing docker ... '
  yum install -y yum-utils device-mapper-persistent-data lvm2
  yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
  yum install -y docker-ce docker-ce-cli containerd.io
  if [ $? -ne 0 ]; then
     echo 'Docker install Error!'
     echo 'Please check network or YUM settings'
     exit 1
  fi
fi

# Install docker-compose
echo 'check docker-compose version ... '
docker-compose --version
if [ $? -ne 0 ]; then
  echo 'Docker-Compose Version Request Error!'
  echo 'install docker-compose by curl... '
  yum install epel-release -y
  yum install jq -y
  version=`curl --silent https://api.github.com/repos/docker/compose/releases/latest | jq .name -r`
  curl -L https://github.com/docker/compose/releases/download/${version}/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
  chmod +x /usr/local/bin/docker-compose
  ln /usr/local/bin/docker-compose /usr/bin/docker-compose
  docker-compose --version
  if [ $? -ne 0 ]; then
     echo 'Docker-Compose install Error!'
     echo 'Please check network'
     exit 1
  fi
fi

# サービスを選ばす部分

# サービスに対応するDockerの設定をする

# dockerを起動する

# スキャン用のアプリも起動する
