Vagrant.configure(2) do |config|
  # 軽量 Docker付きホストos
  # config.vm.box = "ailispaw/barge"
  config.vm.box = "ubuntu/lunar64"
  
  config.vm.hostname = "test"
  config.vm.network "private_network", ip: "192.168.56.10"

  config.vm.provider "virtualbox" do |vb|
    vb.name = "test"
    vb.gui = false
    vb.memory = 4096
    vb.cpus = 2
    vb.customize [
      "modifyvm", :id,
      "--nicpromisc2","allow-all",
      "--vram", "256",
    ]
  end

  # config.disksize.size = '100GB'
  # config.mutagen.orchestrate = true

  # filesync setting
  config.vm.synced_folder "/Users/bzy107r/git", "/home/vagrant/git"
  config.vm.synced_folder "/Users/bzy107r/vagrant", "/home/vagrant/vagrant"

  # windows
  # config.vm.synced_folder "/Users/starw/git", "/home/bargee/git"
  # config.vm.synced_folder "/Users/starw/vagrant", "/home/bargee/vagrant"

  # install docker-compose 
  config.vm.provision "shell",
    run: "always",
    inline: "/bin/bash /home/vagrant/vagrant/install-docker-compose.sh"
end
