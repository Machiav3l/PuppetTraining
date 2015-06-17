class profile::puppetmaster {
  package { 'puppetmaster':
    ensure => installed,
  }

  augeas { 'use google resolver':
    context => '/files/etc/resolv.conf',
    changes => 'set nameserver[.="8.8.8.8"] 8.8.8.8',
  }

  augeas { 'netrc rndwwww':
    incl    => '/root/.netrc',
    lens    => 'Netrc.lns',
    changes => [
      'set rndwww/login admin',
      'set rndwww/password p@SSw0rd',
    ]
  }
}
