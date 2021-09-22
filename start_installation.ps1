# Set Powershell policy
Set-ExecutionPolicy RemoteSigned -scope CurrentUser -Force

# Install chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install virtualbox from chocolatey
choco install -y virtualbox

# Add VirtualBox to environment path in order to use VBoxManage command line
$env:PATH = $env:PATH + ";C:\Program Files\Oracle\VirtualBox"

# Install scoop
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')

# Install vagrant
scoop install vagrant

# Install vagrant plugin
vagrant plugin install vagrant-disksize
vagrant plugin install vagrant-vbguest

# Install Ubuntu
vagrant up

# restart Ubuntu
vagrant reload
