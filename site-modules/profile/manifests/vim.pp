
class profile::vim {
  class { "::vim": 
    user => "osboxes",
    homedir => "/home/osboxes", 
  }

  vim::plugin { "https://github.com/scrooloose/nerdtree.git": }
} 
