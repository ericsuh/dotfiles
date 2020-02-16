#! /bin/bash

# Run macos first, to override anything in posix
stow -t "${HOME}" macos
stow -t "${HOME}" posix
