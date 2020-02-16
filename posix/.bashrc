source ${HOME}/.bash_aliases
source ~/.git-completion.bash

if [ -e "${HOME}/.bashrc_os" ];    then source "${HOME}/.bashrc_os"; fi
if [ -e "${HOME}/.bashrc_local" ]; then source "${HOME}/.bashrc_local"; fi
