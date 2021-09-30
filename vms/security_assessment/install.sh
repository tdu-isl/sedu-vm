#!/bin/bash

# Install docker docker-compose
sudo apt-get install docker docker-compose

# サービスを選ばす部分
echo -e "
1) Web
2) Platform
3) ...
*) quit
"

read -p "input > " p
case $p in
  1)
    cd web
    sudo bash install.sh
    ;;
  2)
    ;;
  3)
    ;;
  *)
    echo "Do nothing..."
    ;;
esac
