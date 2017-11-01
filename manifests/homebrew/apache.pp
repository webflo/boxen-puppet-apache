class apache::homebrew::apache {
  package { 'httpd':
    ensure => 'latest'
  }
}
