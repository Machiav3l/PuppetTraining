node "puppetmaster.c2c" {
  include role::puppetmaster
}

node /dev\.c2c/ {
  include role::devel
  package { 'git':
    ensure => installed,
  }
}
