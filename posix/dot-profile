# History settings
shopt -s histappend # append, don't overwrite history
export PROMPT_COMMAND='history -a' #write history when displaying prompt
export LC_CTYPE=en_US.UTF-8 # For possible non-ASCII filenames

# Coloration of Command Prompt and 'ls'
# includes magic sequence \033k\033\\ at beginning
# for the purposes of `screen` and \033[7h
# to allow for good line wrapping
export PS1='\[\033k\033\\\033[7h\][\u@\h:\W]$ '
export CLICOLOR=1
export EDITOR=vim

export PYTHONSTARTUP="${HOME}/.pythonrc"

# set PATH so it includes user's private bin if it exists

if [ -d "$HOME/bin" ];         then PATH="$HOME/bin:$PATH"; fi
if [ -d "$HOME/.local/bin" ];  then PATH="$HOME/.local/bin:$PATH"; fi
if [ -d "$HOME/.cargo/bin" ];  then PATH="$HOME/.cargo/bin:$PATH"; fi
if [ -d "/usr/local/go/bin" ]; then PATH="/usr/local/go/bin:$PATH"; fi

export PATH

# Set up SSH settings

SSH_ENV="$HOME/.ssh/environment"
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
function start_agent {
	/usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
	chmod 600 "${SSH_ENV}"
	. "${SSH_ENV}" > /dev/null
	/usr/bin/ssh-add;
}

# Source SSH settings, if applicable

if [ -f "${SSH_ENV}" ]; then
    . "${SSH_ENV}" > /dev/null
    #ps ${SSH_AGENT_PID} doesn't work under cywgin
	ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
		start_agent;
	}
else
    start_agent;
fi

if [ -e "${HOME}/.profile_os" ];    then source "${HOME}/.profile_os"; fi
if [ -e "${HOME}/.profile_local" ]; then source "${HOME}/.profile_local"; fi
