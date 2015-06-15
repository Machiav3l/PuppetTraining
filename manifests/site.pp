node "puppetmaster.c2c" {
  include role::puppetmaster
}

node /dev\.c2c/ {
  include role::desktop,
  package { 'git':
    ensure => installed,
  }
}
