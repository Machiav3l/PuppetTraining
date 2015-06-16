class profile::puppet {
  service { 'puppet' :
    ensure => running,
  }
}
