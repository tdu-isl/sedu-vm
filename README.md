# sedu-vm

[作業](docs/progress.md)  
sedu-vm: <span style="color: red;">se</span>curity + <span style="color: red;">edu</span>cation + vm

```
 ____  _____ ____  _   _    __     ____  __ 
/ ___|| ____|  _ \| | | |   \ \   / /  \/  |
\___ \|  _| | | | | | | |____\ \ / /| |\/| |
 ___) | |___| |_| | |_| |_____\ V / | |  | |
|____/|_____|____/ \___/       \_/  |_|  |_|
                                            
```

- [日本語版 README](https://github.com/tdu-isl/sedu-vm/blob/main/docs/README_JP.md)

## Description

This is the automatic building scripts of multiple cyber security-related tool and environments.

## Demo

<div align="center">
<img src="https://github.com/tdu-isl/sedu-vm/wiki/images/demo.gif" alt="属性" title="demo">
</div>

## Tool/Environment

- [Malware Analysis](https://github.com/tdu-isl/sedu-vm/tree/main/vms/malware_analysis)
- [Security Assessment](https://github.com/tdu-isl/sedu-vm/tree/main/vms/security_assessment)
- [?]()
- [?]()

## Install

1. Clone this repository to your computer
2. Open Powreshell, and use ```cd``` command to get into the repository folder. And run ```.\pre-build.sh``` command to 
3. Open Git bash, and use ```cd``` command to get into the repository folder
4. Run ```sh vm_selection.sh``` command to start installation
5. After the Ubuntu 20.04 virtual machine installed, you will be asked to select which tool or environment to install. Please select one of them.

# Note
1. Make sure that the 'Hyper-V' and 'Virtual Machine Platform' are disabled in Windows Features. When the "Virtual Machine Platform" disable, the Windows Subsystem Linux (WSL) cannot be used anymore. Type ```bash``` command in CMD after 'Virtual Machine Platform' is disabled, you will get below error. Therefor, please use **Git Bash** to run the ```sh vm_selection.sh```.
   ```Please enable the Virtual Machine Platform Windows feature and ensure virtualization is enabled in the BIOS.For information please visit https://aka.ms/wsl2-install```
`
2. The installed Ubuntu 20.04's configurations on your computer are:
   > The configuration of the Ubuntu can be modified in the ```Vagrantfile: vb.customize```
   1. Virual machine name: ```sedu_vm```
   2. Login name / Password: ```vagrant``` / ```vagrant```
   3. GUI: ```True```
   4. CPU: ```4```
   5. Memory: ```4096M```
   6. Video RAM: ```256M```
   7. Disk size: ```50GB```
   8. Copy and Paste between host and guest: ```bidirectional```
3. The installation will take some time :coffee:

## Licence

[MIT](https://github.com/tdu-isl/sedu-vm/blob/main/LICENSE)

## Author

- [:boy:Fumiya Kurihara]()
- [:boy:Ryosuke Okayasu]()
- [:boy:Ziyuan Yang]()
- [:boy:Teruki Yoshikawa]()
- [:boy:Yuki Yoshida]()
- [:man:Jiaxing Zhou]()
