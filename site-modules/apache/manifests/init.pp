class apache {
  case $::osfamily {
    'Debian' : {
      $name = 'apache2',
      $name_service = 'apache',
      $user = 'www-data',
      $path = '/etc/apache2/apache2.conf',
    }
    'RedHat' : {
      $name = 'httpd',
      $name_service = 'httpd',
      $user = 'apache',
      $path = '/etc/httpd/httpd.conf',
    }
  }
  
  package { 'apache':
    ensure => installed,
    name   => $name,
  } ->
  file { 'apache conf':
    ensure => file,
    path   => $path,
    owner  => $user,
    group  => $user,
    mode   => '0644',
  } ~>
  service { 'apache':
    ensure => running,
    name   => $name_service,
  }
}
