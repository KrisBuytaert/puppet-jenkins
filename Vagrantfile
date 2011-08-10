Vagrant::Config.run do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  config.vm.define :jenkins_ci do |jenkins_ci_config|
       jenkins_ci_config.vm.box = "Centos6"
       jenkins_ci_config.ssh.max_tries = 100
       jenkins_ci_config.vm.host_name = "jenkins_ci"
       jenkins_ci_config.vm.forward_port "http", 80, 8083
       jenkins_ci_config.vm.provision :puppet do |jenkins_ci_puppet|
       		jenkins_ci_puppet.pp_path = "/tmp/vagrant-puppet"
       		jenkins_ci_puppet.manifests_path = "manifests"
       		jenkins_ci_puppet.module_path = "modules"
       		jenkins_ci_puppet.manifest_file = "site.pp"
       end


  end
end
