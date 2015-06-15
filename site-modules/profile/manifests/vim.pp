class profile::vim {




class { "vim":
user => "user",
}

vim::plugin { "https://github.com/scrooloose/nerdtree.git":}
}
