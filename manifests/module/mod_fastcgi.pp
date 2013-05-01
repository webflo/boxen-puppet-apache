class apache::module::mod_fastcgi {
  include apache::module::requirements
  
  package { 'homebrew/apache/mod_fastcgi':
    ensure  => present,
    require => Class['Apache::module::requirements'],
  }

  $version = '2.4.6'
  file { '/etc/apache2/other/mod_fastcgi.conf':
    ensure  => present,
    content => template('apache/config/apache/modules/mod_fastcgi.conf.erb'),
  }
}