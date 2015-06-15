node "puppetmaster.c2c" {
  include role::puppetmaster
}

node "jahwisdom.dev.c2c" {
include role::desktop
}

node /dev\.c2c/ {
  package { 'git':
    ensure => installed,
  }
}


