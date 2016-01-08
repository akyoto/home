#!/bin/bash

# node
alias n='node'

# npm
alias nr='npm run'
alias ni='npm install'
alias nig='npm install -g'
alias nt='npm test'
alias n:='npm search'

# ApacheBench
alias b='ab -kc 10 -t 30'
alias b4k='b http://localhost:4000/'

# git
alias gs='git status'
alias gd='git diff'
alias gl='git log'
alias gp='git pull'
alias gu='git push'
alias gc='git clone'
alias gm='git commit'
alias sp='sugoi push'

# sugoi
alias s='sugoi'

# aerospike
alias dbup='sudo service aerospike start'
alias dbdown='sudo service aerospike stop'

# p PROJECTNAME
goProject() { cd "$HOME/projects/$@"; }
alias p="goProject"

# d DIRNAME
mkdirAndEnter() { mkdir $@; cd $@; }
alias d="mkdirAndEnter"

# editor
export EDITOR=vim
alias e=$EDITOR

# aero
aeroFromGit() {
	cd node_modules
	rm -rf ./aero
	ln -s $HOME/projects/aero aero
	cd ..
}
alias afg="aeroFromGit"

traceFunc() {
	LOG=$(node --trace-opt .)
	echo "$LOG" | grep $@
}
alias ntr="traceFunc"
