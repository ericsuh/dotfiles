alias ls='ls -F'

# To prevent stupidity
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ln='ln -i'

# Useful tool functions

function hgroot {
    MYCWD=$(pwd)
    until [ -d ${MYCWD}/.hg ]; do
      MYCWD=$(dirname ${MYCWD})
      if [ "${MYCWD}" == "/" ]; then
        exit 1;
      fi
    done
    echo ${MYCWD}
}

function gohere() {
    export GOPATH=$(pwd)
}

function ackp {
    ack $@ --pager='less -R'
}

if [ -e "${HOME}/.bash_aliases_os" ];    then source "${HOME}/.bash_aliases_os"; fi
if [ -e "${HOME}/.bash_aliases_local" ]; then source "${HOME}/.bash_aliases_local"; fi
