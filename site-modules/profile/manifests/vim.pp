class profile::vim {
  class { "::vim":
    user => "osboxes.org",
    home_dir => "home/user",
  }

 vim::plugin {"https://github.com/scrooloose/nerdtree.git"}
}
