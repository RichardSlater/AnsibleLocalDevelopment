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
end
