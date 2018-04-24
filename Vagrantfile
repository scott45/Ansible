# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

Vagrant.configure("2") do |config|

    # Application server 1.
  config.vm.define "app" do |app|
      app.vm.box = "ubuntu/trusty64"
      app.vm.hostname = "app"
      app.vm.network :private_network, ip: "192.168.60.4"
      app.vm.provision "shell", path: "setup.sh"
      app.vm.provision "ansible" do |ansible|
        ansible.playbook = "scotty.yml"
      end
  end

    # Application server 2.
  config.vm.define "app2" do |app|
      app.vm.box = "ubuntu/trusty64"
      app.vm.hostname = "app2"
      app.vm.network :private_network, ip: "192.168.60.5"
      app.vm.provision "shell", path: "setup.sh"
      app.vm.provision "ansible" do |ansible|
        ansible.playbook = "scotty2.yml"
      end
  end

    # Database server.
  config.vm.define "dbase" do |dbase|
      dbase.vm.box = "ubuntu/trusty64"
      dbase.vm.hostname = "dbase"
      dbase.vm.network :private_network, ip: "192.168.60.6"
      dbase.vm.provision "shell", path: "setup.sh"
      dbase.vm.provision "ansible" do |ansible|
        ansible.playbook = "db.yml"
      end
  end 

end