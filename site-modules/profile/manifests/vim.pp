class profile::vim {
  class { '::vim':
     user => "rpetitti",
     home_dir => "/home/rpetitti",
  }

  vim::plugin { "https://github.com/scrooloose/nerdtree.git": }
}

