#!/bin/bash

# Preparation OWASP ZAP
$ sudo apt install default-jre openjdk-11-jre-headless -y

wget https://github.com/zaproxy/zaproxy/releases/download/v2.10.0/ZAP_2_10_0_unix.sh

sudo sh ZAP_2_10_0_unix.sh

# Preparation Web App
sudo apt-get install python3 -y

sudo apt-get install python3-pip -y

sudo apt install python3-testresourcesã€€-y

pip install -r requirements.txt

echo "Complete Installing!!"
echo ""
echo "----------------------------"
echo "How to Start App: uvicorn main:app --reload"
echo "How to End App  : [Ctrl + c]"
echo "----------------------------"
echo ""
echo "Vuln-Web-App Start!!"

cd app

python3 -m uvicorn main:app --reload
