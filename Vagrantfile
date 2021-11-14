Vagrant.configure(2) do |config|
  config.vm.box = "debian/bullseye64"

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "ansible/ispmail.yml"
    ansible.become = true
    ansible.compatibility_mode = '2.0'
  end

  config.vm.provider "virtualbox" do |vb|
    #config.vm.network "private_network", :type => 'dhcp', :name => 'vboxnet0', :adapter => 2
    config.vm.network "private_network", ip: "10.0.0.100"
  end

  # HTTP
  config.vm.network "forwarded_port", guest: 80, host: 10080
  # HTTPS
  config.vm.network "forwarded_port", guest: 443, host: 10443
  # IMAP
  config.vm.network "forwarded_port", guest: 143, host: 10143
  # POP3
  config.vm.network "forwarded_port", guest: 110, host: 10110
  # SMTP
  config.vm.network "forwarded_port", guest: 25, host: 10025
  # Submission
  config.vm.network "forwarded_port", guest: 587, host: 10587
end

# -*- mode: ruby -*-
# vi: set ft=ruby :
