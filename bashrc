export CDPATH='.:${HOME}:${CDPATH}'
export PATH="${HOME}/bin:${PATH}"

source ${HOME}/.bash_aliases
source ~/.git-completion.bash

LOCAL_BASHRC="${HOME}/.bashrc_local"
if [ -e ${LOCAL_BASHRC} ]; then
	source ${LOCAL_BASHRC}
fi
