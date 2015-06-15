class profile::vim{
class { "vim":
  user => "osboxes",
  home_dir => "/home/osboxes",
}
}

