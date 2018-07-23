class apache::config {
  require boxen::config

  $configdir  = "/opt/boxen/homebrew/etc/httpd"
  $configfile = "${configdir}/httpd.conf"
  $sitesdir   = "${configdir}/sites"
  $portdir    = "${configdir}/port"
  $otherdir   = "${configdir}/other"
  $package    = "boxen/brews/httpd"

  $executable = "/usr/sbin/httpd"
  $logdir     = "/var/log/apache2"
  $logerror   = "${logdir}/error.log"
}
