node 'jenkins_ci' {

  	service { "iptables":
                ensure => "stopped",
                enable => "false";
                }
	
	package {"java":
		name   => "java-1.6.0-openjdk",
		ensure => "present";
	}

	include jenkins
	

}


