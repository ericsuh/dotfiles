#! /bin/bash

# Run ubuntu first, to override anything in posix
stow --dotfiles -t "${HOME}" ubuntu

if [ -f "${HOME}/.bashrc}" -a ! -h "${HOME}/.bashrc" ]; then
  mv "${HOME}/.bashrc" "${HOME}/.bashrc_local"
fi

if [ -f "${HOME}/.gitconfig" -a ! -h "${HOME}/.gitconfig" ]; then
  mv "${HOME}/.gitconfig" "${HOME}/.gitconfig_local"
fi

stow --dotfiles --defer=.* -t "${HOME}" posix
stow --dotfiles --defer=.* -t "${HOME}/.config" posix-dot-config
mkdir -p "${HOME}/.local/bin"
stow --dotfiles --defer=.* -t "${HOME}/.local/bin" dot-local-bin
nvim --headless -s nvim-init.vim +q
