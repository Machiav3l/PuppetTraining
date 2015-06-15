class profile::vim{
class { "vim":
  user => "osboxes",
  homedir => "/home/osboxes",
}
}

