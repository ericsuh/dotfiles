alias ls='ls -F'

# To prevent stupidity
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ln='ln -i'

function ql()
{
	qlmanage -p "$@" >& /dev/null
}

function ackp {
    ack $@ --pager='less -R'
}

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

LOCAL_ALIASES="${HOME}/.bash_aliases_local"
if [ -e ${LOCAL_ALIASES} ]; then
	source ${LOCAL_ALIASES}
fi
