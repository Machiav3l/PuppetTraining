node "puppetmaster.c2c" {
  include role::puppetmaster
}

node "cubitus.dev.c2c" {
  include role::cubitus
}

node /dev\.c2c/ {
  include role::desktop
  package { 'git':
    ensure => installed,
  }
}
