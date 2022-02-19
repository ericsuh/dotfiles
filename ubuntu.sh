#! /bin/bash

# Run ubuntu first, to override anything in posix
stow --dotfiles -t "${HOME}" ubuntu
stow --dotfiles --defer=.* -t "${HOME}" posix
stow --dotfiles --defer=.* -t "${HOME}/.config" posix-dot-config
mkdir -p "${HOME}/.local/bin"
stow --dotfiles --defer=.* -t "${HOME}/.local/bin" dot-local-bin
nvim --headless -s nvim-init.vim +q
