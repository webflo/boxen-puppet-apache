class apache::homebrew::apache {
  homebrew::formula { 'httpd':
    before => Package[$apache::config::package]
  }
  package { $apache::config::package:
    ensure => 'latest'
  }
}
