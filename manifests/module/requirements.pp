class apache::module::requirements {
  include apache::homebrew::apache

  # https://github.com/Homebrew/homebrew-apache#troubleshooting
  file { "/Applications/Xcode.app/Contents/Developer/Toolchains/OSX${::macosx_productversion_major}.xctoolchain":
    ensure => 'link',
    target => '/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain',
    owner => 'root',
    group => 'wheel'
  }
}
