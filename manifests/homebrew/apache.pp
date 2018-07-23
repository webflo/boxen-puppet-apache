class apache::homebrew::apache {
  homebrew::formula { 'httpd':
    before => Package[$apache::config::package]
  }
  package { $apache::config::package:
    ensure => '2.4.34'
  }
}
