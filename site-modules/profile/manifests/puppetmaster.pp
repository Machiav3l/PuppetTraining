class profile::puppetmaster {
  package { 'puppetmaster':
    ensure => installed,
  }
}
