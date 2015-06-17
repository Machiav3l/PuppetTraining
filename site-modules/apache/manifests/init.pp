class apache {
  case $::osfamily {
    'debian': {
      $package = 'apache2'
      $conffile = '/etc/apache2/apache2.conf'
      $service = 'apache'
      $user = 'www-data'
      $group = 'www-data'
    }

    'redhat': {
      $package = 'httpd'
      $conffile = '/etc/httpd/conf/httpd.conf'
      $service = 'httpd'
      $user = 'apache'
      $group = 'apache'
    }

    default: {
      fail "Unsupported OS family ${::osfamily}"
    }
  }

  package { 'apache':
    ensure => installed,
    name   => $package,
  } ->
  file { 'apache conf':
    ensure => file,
    path   => $conffile,
    owner  => $user,
    group  => $group,
    mode   => '0644',
    source => "puppet:///modules/apache/apache.${::osfamily}.conf",
  } ~>
  service { 'apache':
    ensure => running,
    name   => $service,
  }
}
