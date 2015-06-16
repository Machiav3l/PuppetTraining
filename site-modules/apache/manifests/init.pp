class apache {
  package { 'apache':
    ensure => installed,
    name   => 'httpd',
  } ->
  file { 'apache conf':
    ensure => file,
    path   => '/etc/httpd/httpd.conf',
    owner  => 'apache',
    group  => 'apache',
    mode   => '0644',
  } ~>
  service { 'apache':
    ensure => running,
    name   => 'httpd',
  }
}
