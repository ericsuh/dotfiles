#! /bin/bash

# Run macos first, to override anything in posix
stow --dotfiles -t "${HOME}" macos
stow --dotfiles --defer=.* -t "${HOME}" posix
stow --dotfiles --defer=.* -t "${HOME}/.config" posix-dot-config
nvim --headless +PlugInstall +qa
