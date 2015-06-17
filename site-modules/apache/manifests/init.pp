class apache {
  case $::osfamily {
    'Debian' : {
      $name_package = 'apache2'
      $name_service = 'apache2'
      $user = 'www-data'
      $path = '/etc/apache2/apache2.conf'
    }
    'RedHat' : {
      $name_package = 'httpd'
      $name_service = 'httpd'
      $user = 'apache'
      $path = '/etc/httpd/conf/httpd.conf' 
    }
    default : { fail("Unsupported OS: ${::osfamily}") }
  }
  
  package { 'apache':
    ensure => installed,
    name   => $name_package,
  } ->
  file { 'apache conf':
    ensure => file,
    path   => $path,
    owner  => $user,
    group  => $user,
    mode   => '0644',
    source => $source = "puppet:///site-modules/apache/apache.${::osfamily}.conf",
  } ~>
  service { 'apache':
    ensure => running,
    name   => $name_service,
  }
}
