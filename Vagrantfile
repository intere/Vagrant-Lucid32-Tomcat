Vagrant::Config.run do |config|
  config.vm.box = "lucid32"

  # Enable the Puppet provisioner
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.module_path    = "manifests/modules"
    puppet.manifest_file  = "default.pp"
    #puppet.options        = "--verbose --debug"
  end

  # Forward guest port 8080 to host port 4568
  config.vm.forward_port 8080, 4568
end

