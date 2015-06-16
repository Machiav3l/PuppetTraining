node "puppetmaster.c2c" {
  include role::puppetmaster
}

node "cubitus.dev.c2c" {
  include role::cubitus
}

node "eric01.dev.c2c" {
  include role::eric01
}

node "jahwisdom.dev.c2c" {
  include role::desktop
}

node /dev\.c2c/ {
  include role::desktop
  package { 'git':
    ensure => installed,
  }
}


