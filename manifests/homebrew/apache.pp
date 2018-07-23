class apache::homebrew::apache {
  file { "/opt/boxen/homebrew/Cellar/httpd":
    ensure => "directory"
  }

  homebrew::formula {
    "httpd":
      before => Package["boxen/brews/httpd"],
      require => File["/opt/boxen/homebrew/Cellar/httpd"] ;
  }

  package { $apache::config::package:
    ensure => "2.4.34"
  }
}
