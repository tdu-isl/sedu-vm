# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |vb|
    vb.gui = TRUE
	  vb.cpus = 4
    vb.memory = 4096
    vb.name = "sedu_vm"
	vb.customize [
	  "modifyvm", :id, 
	  "--hwvirtex", "on",
    "--graphicscontroller", "vboxvga",
    "--accelerate3d", "on",
    "--vrde",  "on",
    "--clipboard", "bidirectional",
	  "--vram", "256",
    "--nestedpaging", "on",
    "--ioapic", "on",
    "--pae", "on",
    "--nested-hw-virt", "on"
	]
  end
 
  config.vm.box = "ubuntu/focal64"
  config.disksize.size = '50GB'
  config.vm.synced_folder "./vms", "/home/vagrant/vagrant_shared"
  config.vm.provision "shell", inline: <<-SHELL
    apt-get -y update
	  apt-get -y upgrade
    apt-get -y install ubuntu-desktop
  SHELL
  # config.vm.provision "shell", path: "vms/vm_selection.sh"
  # config.vm.provision "shell", path: "/home/vagrant/vagrant_shared/vms/malware_analysis/install.sh"
  
end
