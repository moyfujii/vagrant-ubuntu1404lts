# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu1404LTS"
  config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"

  config.vm.network "forwarded_port", guest: 80, host: 8080

  config.vm.provision "chef_solo", run_list: [
    "locale",
    "mercurial",
    "git",
    "subversion",
    "python",
    "nginx"
  ]

end
