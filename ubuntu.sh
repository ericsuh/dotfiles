#! /bin/bash

# Run ubuntu first, to override anything in posix
stow --dotfiles -t "${HOME}" ubuntu
stow --dotfiles --defer=.* -t "${HOME}" posix
