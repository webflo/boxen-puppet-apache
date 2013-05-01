class apache::module::mod_fcgid {
  include apache::module::requirements

  package { 'homebrew/apache/mod_fcgid':
    ensure  => present,
    require => Class['Apache::module::requirements'],
  }
}