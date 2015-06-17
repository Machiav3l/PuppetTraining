class profile::puppetmaster {
  package { 'puppetmaster':
    ensure => installed,
  }

  augeas { 'use google resolver':
    context => '/files/etc/resolv.conf',
    changes => 'set nameserver[.="8.8.8.8"] 8.8.8.8',
  }
}
