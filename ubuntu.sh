#! /bin/bash

# Run ubuntu first, to override anything in posix
stow -t "${HOME}" ubuntu
stow -t "${HOME}" posix
