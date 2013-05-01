define apache::port {
  $port = $name

  file { "${apache::config::portdir}/${name}.conf":
    content => template('apache/config/apache/port.conf.erb'),
    require => File[$apache::config::portdir],
  }
}
