#!/bin/bash

# Preparetion OWASP ZAP
$ sudo apt install default-jre openjdk-11-jre-headless

$ wget https://github.com/zaproxy/zaproxy/releases/download/v2.10.0/ZAP_2_10_0_unix.sh

$ sudo sh ZAP_2_10_0_unix.sh

# Preparetion Web App
sudo apt-get install python3

pip install -r requirements.txt

cd app

echo "Complete Installing!!"
echo ""
echo "How to Start: python3 manage.py runserver"
echo "How to End  : [Ctrl + c]"
echo "----------------------------"
echo "Now, Start Vuln-Web-App!!"

python3 manage.py runserver
