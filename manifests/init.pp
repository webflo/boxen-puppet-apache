class apache {
  require apache::config
  require homebrew

  # Add all the directories and files Apache is expecting
  # Most of these should already exist on Mountain Lion
  file { [
    $apache::config::configdir,
    $apache::config::logdir,
    $apache::config::sitesdir,
    $apache::config::portdir,
    "${apache::config::configdir}/other",
  ]:
    ensure => directory
  }

  file { $apache::config::configfile:
    content => template('apache/config/apache/httpd.conf.erb'),
    notify  => Service['org.apache.httpd']
  }

  service { "org.apache.httpd":
    ensure => stopped
  }

}
