define apache::vhost (
  $docroot,
  $servername = $name,
) {
  include ::apache

  file { "apache vhost ${title}":
    ensure  => file,
    path    => "/etc/httpd/conf.d/${name}",
    content => template('apache/vhost.conf.erb'),
    notify  => Service['apache'],
  }
}
