class apache::config {
  require boxen::config

  $configdir  = "/opt/boxen/homebrew/etc/apache2/2.4"
  $configfile = "${configdir}/httpd.conf"
  $sitesdir   = "${configdir}/sites"
  $portdir    = "${configdir}/port"
  $otherdir   = "${configdir}/other"

  $executable = "/usr/sbin/httpd"
  $logdir     = "/var/log/apache2"
  $logerror   = "${logdir}/error.log"
}
