class profile::vim (
  $user = 'osboxes',
) {
  $home = $user ? {
    'root'  => '/root',
    default => "/home/${user}",
  }

  class { '::vim':
    user     => $user,
    home_dir => $home,
  }

  # Syntax
  vim::plugin { 'vim-puppet':
    source => 'https://github.com/rodjek/vim-puppet.git',
  }

  vim::plugin { 'syntastic':
    source => 'https://github.com/scrooloose/syntastic.git',
  }

  vim::plugin { 'tabular':
    source => 'https://github.com/godlygeek/tabular.git',
  }

  vim::plugin { 'fugitive':
    source => 'https://github.com/tpope/vim-fugitive.git',
  }


  # Beautifiers

  vim::plugin { 'nerdtree':
    source => 'https://github.com/scrooloose/nerdtree.git',
  }

  vim::plugin { 'solarized':
    source => 'https://github.com/altercation/vim-colors-solarized.git',
  }
}
