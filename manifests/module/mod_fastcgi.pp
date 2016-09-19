class apache::module::mod_fastcgi {
  include apache::module::requirements
  $version = '2.4.6'

  package { 'homebrew/apache/mod_fastcgi':
    ensure => $version,
    require => Class['Apache::module::requirements'],
    install_options => [
      '--with-homebrew-httpd24'
    ]
  }

  file { '/opt/boxen/homebrew/etc/apache2/2.4/other/00-mod_fastcgi.conf':
    ensure  => present,
    content => template('apache/config/apache/modules/mod_fastcgi.conf.erb'),
  }
}
