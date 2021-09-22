# sedu-vm

[作業](docs/progress.md)  
sedu-vm: <span style="color: red;">se</span>curity + <span style="color: red;">edu</span>cation + vm

## Description

This is the automatic building scripts of multiple cyber security-related tool and environments.

## Demo

<div align="center">
<img src="https://github.com/tdu-isl/sedu-vm/wiki/images/demo.gif" alt="属性" title="demo">
</div>

## Content

- [Malware Analysis]("https://github.com/tdu-isl/sedu-vm/vms/malware_analysis")
- [Security Assessment]("https://github.com/tdu-isl/sedu-vm/vms/security_assessment")
- [?]()
- [?]()

## Install

1. Clone this repository to your computer
2. Open Powershell, and use ```cd``` command to get into the repository folder
3. Run ```vagrant up``` command in order to install Ubuntu 20.04 virtual machine on your computer
4. After the installation finished, run ```vagrant reload``` command to restart the Ubuntu 20.04 virtual machine

# Note
1. The installed Ubuntu 20.04's configurations on your computer are:
   > The configuration of the Ubuntu can be modified in the ```Vagrantfile```
   1. virual machine name: ```MalAnalysis_Ubuntu```
   2. Login name / password: ```vagrant``` / ```vagrant```
   3. GUI: True
   4. CPU: 4
   5. Memory: 4096M
   6. Video RAM: 256M
   7. Disk size: 50GB
   8. Copy and Paste between host and guest: bidirectional
2. The installation will take some time :coffee:

## Licence

[MIT](https://github.com/tdu-isl/sedu-vm/blob/develop/LICENSE)

## Author

- [a]()
- [b]()
- [c]()
- [d]()
- [e]()
- [f]()
