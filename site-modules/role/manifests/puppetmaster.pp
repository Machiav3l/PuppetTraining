class role::puppetmaster {
  include profile::puppetmaster
  include profile::r10k

  class { '::profile::vim': 
    user => 'debian',
  }
}
