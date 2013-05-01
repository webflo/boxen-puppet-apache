define apache::homebrew::tap (
  $ensure = present,
) {
  if $ensure == 'present' {
    exec { "homebrew_tap_${name}":
      command => "brew tap ${name}",
      unless  => "brew tap | grep ${name}",
    }
  } else {
    exec { "homebrew_untap_${name}":
      command => "brew untap ${name}",
      onlyif  => "brew tap | grep ${name}",
    }
  }
}