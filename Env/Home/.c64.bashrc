alias vin="vim"
alias ll="ls -la"
alias gitsubup="git submodule update --init --recursive"
alias gitsync="git fetch --all --prune;git rebase origin/master"
alias v='command gvim "$@" & disown'

## arrow up
bind '"\e[A":history-search-backward'
## arrow down
bind '"\e[B":history-search-forward'
