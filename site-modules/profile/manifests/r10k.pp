class profile::r10k {
  user { 'git-puppet':
    ensure   => present,
    home     => '/srv/puppet',
    password => sha1('misspiggy'),
  } ->
  vcsrepo { '/srv/puppet':
    ensure   => bare,
    provider => git,
    user     => 'git-puppet',
  }
  ->
  class { 'r10k':
    sources => {
      'puppet' => {
        'remote'  => '/srv/puppet',
        'basedir' => "${::settings::confdir}/environments",
      },
    },
  }
}
