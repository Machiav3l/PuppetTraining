class profile::vim {
  class { '::vim':
     user => "rpetitti",
     home_dir => "/home/rpetitti",
  }

  vim::plugin { "nerdtree":
    source => "https://github.com/scrooloose/nerdtree.git",
  }
}

