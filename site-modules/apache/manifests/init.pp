class apache (
  $port = '80',
  $timeout = '60',
  $keepalive = 'Off',
) {
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
      $server_root = '/etc/httpd'
      $conffile = "${server_root}/conf/httpd.conf"
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
    ensure  => file,
    path    => $conffile,
    owner   => $user,
    group   => $group,
    mode    => '0644',
    content => template("apache/apache.${::osfamily}.conf.erb"),
  } ~>
  service { 'apache':
    ensure => running,
    name   => $service,
  }
}
