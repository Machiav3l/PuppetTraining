define apache::vhost (

) {
  include ::apache

  file { "apache vhost ${title}":
    ensure  => file,
    path    => "/etc/httpd/conf.d/${name}",
    content => "<VirtualHost ${name}:80>
</VirtualHost>\n",
    notify  => Service['apache'],
  }
}
