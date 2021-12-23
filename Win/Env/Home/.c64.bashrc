alias vin='vim'
alias ll='ls -la'
alias gitsubup='git submodule update --init --recursive'
alias gitsync='git fetch --all --prune; git rebase origin/`git branch --show-current`; git rebase origin/master; git submodule update --init --recursive'

function v(){
    gvim $@ & disown
}

## arrow up
bind '"\e[A":history-search-backward'
## arrow down
bind '"\e[B":history-search-forward'
