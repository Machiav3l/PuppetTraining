class profile::vim {
  class { "::vim":
    user => "osboxes.org",
    homedir => "home/user",
  }
}
