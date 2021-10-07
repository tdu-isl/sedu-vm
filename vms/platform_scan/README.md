# Platform Scan Exercise

## Description

The Metasploitable virtual machine is an intentionally vulnerable version of Ubuntu Linux designed for testing security tools and demonstrating common vulnerabilities.  
Version 2 of this virtual machine is available for download and ships with even more vulnerabilities than the original image. This virtual machine is compatible with VMWare, VirtualBox, and other common virtualization platforms.  

In this exercise, when you run setup.sh, the "OpenVAS" is installed and ready to perform platform assessment.  
If you want to try "Nessus",  you can download it from this [link](https://www.tenable.com/downloads/nessus?loginAttempted=true) with the following requirements.  
Click on **[Nessus-8.15.2-debian6_i386.dev]**  

and take the following steps.  
```
$ sudo dpkg -i Nessus*.deb
$ sudo /etc/init.d/nessusd start
```
and make initialization.
```
Access to [https://localhost:8834]
```

## Setup

`$ sudo setup.sh`

#### metasploitable2 setup

`$ docker run --rm -it sauravbrahma/metasploit_image bash`

`$ msfconsole`

#### openvas setup

Access to [Management Page](https://127.0.0.1:9392/login/login.html)

<!--
- Install
   1.Clone this script to your VM (Ubuntu 20.04).
   2.Open Terminal and input ```chmod 777 allrun.sh``` to set the permission of this file.
   3.Use```./allrun.sh```to install docker with metasploitable2
   1. When the installation is over, use```docker run ~~rm -it sauravbrahma/metasploit_image bash``` to run the metasploitable.
   2. When you login to the metasploitable, input ```msfconsole```as the final step.
-->

## Network Configuration

![network]()