Vagrant.configure("2") do |config|
    # global settings
    config.vm.provider "virtualbox" do |vb|
       vb.gui = true
       vb.memory = "512"
    end
    config.vm.provision "shell", path: "global-init.sh"
    
    config.vm.define "website1" do |web1|
        web1.vm.box = "spox/ubuntu-arm"
        web1.vm.box_version = "1.0.0"
        # it is important to have a static IP if the VMS have to communicate with each other
        web1.vm.network "private_network", ip: "192.168.56.21"
        web1.vm.network "public_network"
        web1.vm.provision "shell", path: "web1-init.sh"
    end
    
    config.vm.define "website2" do |web2|
        web2.vm.box = "spox/ubuntu-arm"
        web2.vm.box_version = "1.0.0"
        # it is important to have a static IP if the VMS have to communicate with each other
        web2.vm.network "private_network", ip: "192.168.56.22"
        web2.vm.network "public_network"
        web2.vm.provision "shell", path: "web2-init.sh"
    end
end