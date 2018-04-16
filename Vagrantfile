# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
    #berkshelf
    config.berkshelf.enabled = true

    #box
    config.vm.box = 'bento/ubuntu-18.04'
    config.vm.network :private_network, ip: '192.168.33.200'

    #network
    config.vm.network :forwarded_port, guest: 80, host: 8080

    #chef
    chef_repo_path = './chef'

    config.vm.provision :chef_solo do |chef|
        chef.cookbooks_path = 'chef/cookbooks'
        chef.data_bags_path = 'chef/data_bags'
        chef.environments_path = 'chef/environments'
        chef.roles_path = 'chef/roles'

        chef.environment = 'vagrant'
        chef.run_list = [
            'role[webserver]'
        ]
    end
end
