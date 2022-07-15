alias ll='ls -la'
alias gitsubup='git submodule update --init --recursive'
alias gitsync='git fetch --all --prune; git rebase origin/`git branch --show-current`; git rebase origin/master; git submodule update --init --recursive'

if [ -f ~/.c64.local.bashrc ]; then
    source ~/.c64.local.bashrc
fi
