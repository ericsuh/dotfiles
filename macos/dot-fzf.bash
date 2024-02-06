BREW_PREFIX=$(brew --prefix)

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "${BREW_PREFIX}/opt/fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "${BREW_PREFIX}/opt/fzf/shell/key-bindings.bash"
