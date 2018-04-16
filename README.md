# Symfony + Chef + Vagrant

This is a boilerplate for a fresh Symfony 4 app in a Vagrant VM provisioned by Chef. Check out this video for more info: https://www.youtube.com/watch?v=gb2nGE7nUm8

## Setup

Install the latest version of Vagrant:  
http://www.vagrantup.com/downloads.html

Install the latest version of VirtualBox:  
https://www.virtualbox.org/wiki/Downloads

Install the latest version of the ChefDK from:

https://downloads.getchef.com/chef-dk

Install the Vagrant plugins:

```
vagrant plugin install vagrant-berkshelf
```

Clone the repository:

```
git clone git@github.com:gigo6000/symfony4-app.git
cd symfony-chef-vagrant
```

Install Symfony Vendors:

```
composer install
```

Boot the Vagrant machine:

```
vagrant up
```

You should now be able to se the Symfony welcome page here:
http://localhost:8080

## Running

If the VM is stopped (for example after a reboot) run this inside the root directory of the project:

```
vagrant up
```

Restart the VM:

```
vagrant reload
```

If you want to apply recent changes to the vagrant setup or if you had a problem during provisioning, you can kill the box and bring it back up.

```
vagrant destroy -f && vagrant up
```

If you want to apply recent changes in the cookbook without destroying the VM:

```
vagrant reload --provision
```
