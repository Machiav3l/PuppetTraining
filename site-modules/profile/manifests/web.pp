class profile::web {
  include ::apache

  ::apache::vhost { 'myblog.c2c':
    docroot => '/srv/myblog',
  }
}
