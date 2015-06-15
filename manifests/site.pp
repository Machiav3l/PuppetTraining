node "puppetmaster.c2c" {
  include role::puppetmaster
}

node "eric01.dev.c2c" {
  include role::devserver
}

node /dev\.c2c/ {
  package { 'git':
    ensure => installed,
  }
}
