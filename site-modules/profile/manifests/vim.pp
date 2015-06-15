
class profile::vim {
  class { "::vim": 
    user => "osboxes",
    home_dir => "/home/osboxes", 
  }

  vim::plugin { "https://github.com/scrooloose/nerdtree.git": }
} 
