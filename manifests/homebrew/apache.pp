class apache::homebrew::apache {
  ::homebrew::tap { 'homebrew/apache': }

  package { 'homebrew/apache/httpd24':
    ensure => 'latest',
    install_options => [
      '--with-http2',
      '--with-privileged-ports'
    ]
  }
}
