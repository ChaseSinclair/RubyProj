# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = '2'.freeze

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Use Ubuntu 14.04 Trusty Tahr 64-bit as our operating system
  config.vm.box = 'ubuntu/trusty64'

  config.vm.synced_folder '.', '/home/vagrant/MyBlog'

  # Forward a range of ports we might run rails services on
  (3000..3010).each do |port|
    config.vm.network :forwarded_port, guest: port, host: port
  end

  # Configurate the virtual machine to use 2GB of RAM
  config.vm.provider :virtualbox do |vb|
    vb.customize ['modifyvm', :id, '--memory', '2048']
  end

  # Use Chef Solo to provision our virtual machine
  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ['cookbooks', 'site-cookbooks']

    chef.add_recipe 'apt'
    # TODO: Figure out why this won't work to install the correct version
    # chef.add_recipe 'nodejs'
    chef.add_recipe 'ruby_build'
    chef.add_recipe 'ruby_rbenv::user_install'

    chef.add_recipe 'ruby_rbenv::user'
    chef.add_recipe 'ruby_rbenv::system_install'
    chef.add_recipe 'vim'
    chef.add_recipe 'mysql::server'
    chef.add_recipe 'mysql::client'

    # Install Ruby 2.2.4 and Bundler
    # Set an empty root password for MySQL to make things simple
    chef.json = {
      rbenv: {
        rubies: ['2.2.4'],
        user_rubies: ['2.2.4'],
        user_installs: [{
          user: 'vagrant',
          rubies: ['2.2.4'],
          global: '2.2.4',
          gems: {
            '2.2.4' => [
              { name: 'bundler' }
            ]
          }
        }]
      },
      mysql: {
        server_root_password: ''
      }
    }
  end
end