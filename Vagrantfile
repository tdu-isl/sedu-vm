# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |vb|
    vb.gui = TRUE
	  vb.cpus = 4
    vb.memory = 4096
    vb.name = "MalAnalysis_Ubuntu"
	vb.customize [
	  "modifyvm", :id, 
	  "--hwvirtex", "on",
    "--graphicscontroller", "vmsvga",
    "--accelerate3d", "off",
    "--vrde",  "off",
    "--clipboard", "bidirectional",
	  "--vram", "256",
	]
  end
 
  config.vm.box = "ubuntu/focal64"
  config.disksize.size = '50GB'
  config.vm.synced_folder "./vms", "/home/vagrant/vagrant_shared"
  config.vm.provision "shell", inline: <<-SHELL
    apt-get -y update
	  apt-get -y upgrade
    apt-get -y install ubuntu-desktop
	  sh /home/vagrant/vagrant_shared/vms/malware_analysis/install.sh
  SHELL
end
