alias ll='ls -la'
alias gitsubup='git submodule update --init --recursive'
alias gitsync='git fetch --all --prune; git rebase origin/`git branch --show-current`; git rebase origin/master; git submodule update --init --recursive'

function pomodoro(){
	TIME=$(($1*15*60))
	for (( i=$TIME; i>=0; i-- )); do
		clear
		echo Time: $i
		sleep 1
	done
	for (( i=0; i<5; i++ )); do
		tput bel
		sleep 0.1
	done
}

function go_to_root(){
	git status > /dev/null
	IS_IN_GIT=`echo $?`
	if [ "$IS_IN_GIT" = "0" ];then
		while [ ! -d ".git" ];do
			cd ..
		done
	fi
}

if [ -f ~/.c64.local.bashrc ]; then
    source ~/.c64.local.bashrc
fi
