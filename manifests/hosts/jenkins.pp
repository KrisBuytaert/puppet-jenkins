node 'jenkins_ci' {


	yumrepo {
                'inuits':
                        baseurl => $operatingsystemrelease ? {
                                '6.0' => 'http://repo.inuits.be/centos/6/os',
                                '*' => 'http://repo.inuits.be/centos/5/os',
                        },
                        descr => $operatingsystemrelease ? {
                                '6.0' => 'inuits internal CentOS 6.x repo',
                                '*' => 'inuits internal CentOS 5.x repo',
                        },
                        gpgcheck => 0,
                        enabled => 1;

                'epel':
                        baseurl => $operatingsystemrelease ? {
                                '6.0' => "http://mirror.eurid.eu/epel/6/$hardwaremodel/",
                                '*' => "http://mirror.eurid.eu/epel/5/$hardwaremodel/",
                        },
                        descr => $operatingsystemrelease ? {
                                '6.0' => 'Extra Packages for Enterprise Linux 6.x
',
                                '*' => 'Extra Packages for Enterprise Linux 5.x',
                        },
                        gpgcheck => 0,
                        enabled => 1;
        }



	


  	service { "iptables":
                ensure => "stopped",
                enable => "false";
                }
	
	package {
		
		"java":
			name   => "java-1.6.0-openjdk",
			ensure => "present";
		"rubygem-fpm":
			ensure => "present";
		"drush":
			ensure => "present";
		"drush-make":
			ensure => "present";
		"rpm-build":
			ensure => "present";
		"git":
			ensure => "present";
		"subversion":
			ensure => "present";
		"cvs":
			ensure => "present";
	}

	include jenkins
	

}


