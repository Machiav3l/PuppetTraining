class role::devel {
  class { '::profile::vim':
    user => 'timok',
  }
}
