#! /bin/bash

# Run ubuntu first, to override anything in posix
stow --dotfiles -t "${HOME}" ubuntu
stow --dotfiles --defer=.* -t "${HOME}" posix
stow --dotfiles --defer=.* -t "${HOME}/.config" posix-dot-config
nvim --headless -s nvim-init.vim +q
