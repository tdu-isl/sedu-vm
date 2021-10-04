#  Metasploitable2

###  This is a Docker with Metasploitable2 
- description

The Metasploitable virtual machine is an intentionally vulnerable version of Ubuntu Linux designed for testing security tools and demonstrating common vulnerabilities. 

Version 2 of this virtual machine is available for download and ships with even more vulnerabilities than the original image. This virtual machine is compatible with VMWare, VirtualBox, and other common virtualization platforms. 

- Install
　<!--
   1.Clone this script to your VM (Ubuntu 20.04).
   2.Open Terminal and input ```chmod 777 allrun.sh``` to set the permission of this file.
   3.Use```./allrun.sh```to install docker with metasploitable2
   -->
   1. When the installation is over, use```docker run --rm -it sauravbrahma/metasploit_image bash``` to run the metasploitable.
   2. When you login to the metasploitable, input ```msfconsole```as the final step.
   
