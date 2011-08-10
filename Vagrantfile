Vagrant::Config.run do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  config.vm.define :jenkins do |jenkins_config|
       jenkins_config.vm.box = "Centos6"
       jenkins_config.ssh.max_tries = 100
       jenkins_config.vm.host_name = "jenkins"
       jenkins_config.vm.forward_port "http", 80, 8083
       jenkins_config.vm.provision :puppet do |jenkins_puppet|
       		jenkins_puppet.pp_path = "/tmp/vagrant-puppet"
       		jenkins_puppet.manifests_path = "manifests"
       		jenkins_puppet.module_path = "modules"
       		jenkins_puppet.manifest_file = "site.pp"
       end


  end
end
