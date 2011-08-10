class jenkins::repo {

	yumrepo {
   	"jenkins":
            descr       => "jenkins",
            enabled     => 1,
            gpgcheck    => 0,
            baseurl     => "http://pkg.jenkins-ci.org/redhat/"; 
        

	}


}

class jenkins::package {
	package {
		"jenkins":
		     ensure => present;
	}



}

class jenkins{

	include jenkins::repo
	include jenkins::package
	Class["jenkins::repo"] -> Class["jenkins::package"]

}


