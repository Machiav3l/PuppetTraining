define apache::vhost (
  $docroot,
  $servername = $name,
) {
  include ::apache

  file { "apache vhost ${title}":
    ensure  => file,
    path    => "${::apache::vhostdir}/${name}.conf",
    content => template('apache/vhost.conf.erb'),
    notify  => Service['apache'],
  }
}
