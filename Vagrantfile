# Vagrantfile for Purple Team Lab
Vagrant.configure("2") do |config|
  config.vm.box_check_update = false

  # Attacker: Kali Linux
  config.vm.define "attacker" do |attacker|
    attacker.vm.box = "kalilinux/rolling"
    attacker.vm.hostname = "attacker"
    attacker.vm.network "private_network", ip: "192.168.56.10"
    attacker.vm.provision "shell", path: "provision/attacker.sh"
  end

  # Defender: Ubuntu with ELK
  config.vm.define "defender" do |defender|
    defender.vm.box = "ubuntu/bionic64"
    defender.vm.hostname = "defender"
    defender.vm.network "private_network", ip: "192.168.56.11"
    defender.vm.provision "shell", path: "provision/defender.sh"
  end

  # Victim: Windows 10 (Community Box)
  config.vm.define "victim" do |victim|
    victim.vm.box = "gusztavvargadr/windows-10"
    victim.vm.hostname = "victim"
    victim.vm.network "private_network", ip: "192.168.56.12"
    victim.vm.communicator = "winrm"
    victim.vm.guest = :windows
    victim.vm.winrm.username = "vagrant"
    victim.vm.winrm.password = "vagrant"
    victim.vm.provision "shell", path: "provision/victim.ps1", privileged: false
  end
end
