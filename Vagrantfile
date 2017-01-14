VAGRANT_FILE_API_VERSION = "2"
Vagrant.configure(VAGRANT_FILE_API_VERSION) do |config|
  config.vm.box = "phoenixTW/OpenSchoolLab"
  config.vm.box_check_update = true
  config.vm.network "private_network", ip: "192.168.36.10"
  config.vm.synced_folder "..", "/osl", :owner => "vagrant"
  config.vm.provider "virtualbox" do |v|
    v.customize ["modifyvm", :id, "--memory", 8192, "--cpus", 2, "--name", "OSL-Dev"]
  end
end
