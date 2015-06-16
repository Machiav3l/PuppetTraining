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

  # Puppet-lint
  package { 'puppet-lint':
    ensure   => installed,
    provider => 'gem',
  }

  vim::rc { 'syntastic':
    content => '
      " syntastic
      set statusline+=%#warningmsg#
      set statusline+=%{SyntasticStatuslineFlag()}
      set statusline+=%*
      let g:syntastic_always_populate_loc_list = 1
      let g:syntastic_auto_loc_list = 1
      let g:syntastic_check_on_wq = 0
    ',
  }
}
