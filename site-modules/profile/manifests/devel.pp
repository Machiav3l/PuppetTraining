class profile::devel (
  $user = 'root',
) {
  include ::git

  user { $user:
    ensure     => present,
    managehome => true,
  }
}
