Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.network "public_network"
  config.vm.provider "hyperv" do |h|
    h.vm_integration_services = {
        guest_service_interface: true,
        heartbeat: true,
        key_value_pair_exchange: true,
        shutdown: true,
        time_synchronization: true,
        vss: true
    }
    h.vmname = "VagrantCentOS7"
    h.cpus = 1
    h.maxmemory = 4096
    h.enable_virtualization_extensions = true
    h.differencing_disk = true
  end

  config.vm.synced_folder ".", "/vagrant", type: "rsync", rsync__exclude: ".git/"

  config.vm.provision "shell", path: "bootstrap.sh"
  config.vm.provision "ansible_local" do |ansible|
    ansible.compatibility_mode = "2.0"
    ansible.galaxy_role_file = 'ansible/requirements.yml'
    ansible.playbook = "ansible/playbook.yml"
  end
end
