node "puppetmaster.c2c" {
  include role::puppetmaster
}

node /dev\.c2c/ {
  # hello
  include role::devel
}
