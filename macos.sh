#! /bin/bash

# Run macos first, to override anything in posix
stow --dotfiles -t "${HOME}" macos
stow --dotfiles --defer=.* -t "${HOME}" posix
stow --dotfiles --defer=.* -t "${HOME}/.config" posix-dot-config
mkdir -p "${HOME}/.local/bin"
stow --dotfiles --defer=.* -t "${HOME}/.local/bin" dot-local-bin
nvim --headless -s nvim-init.vim +q
