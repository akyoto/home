#!/bin/bash

# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# node
alias n='node'
alias ns='node --use_strict'

# npm
alias nr='npm run'
alias ni='npm install'
alias nig='npm install -g'
alias nt='npm test'
alias n:='npm search'

# ApacheBench
alias b='ab -kc 10 -t 30'
alias b4k='b http://localhost:4000/'
alias b5k='b http://localhost:5000/'

# git
alias gs='git status'
alias gd='git diff'
alias gl='git log'
alias gp='git pull'
alias gu='git push'
alias gc='git clone'
alias gm='git commit'
alias go='git open'
alias gr='git recent'
alias loc='git ls-files | grep "\.js$" | xargs cloc'

# sugoi
alias s='sugoi'
alias sp='sugoi push'

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
openEditor() { test -w $@ && vim $@ || sudo vim $@; }
alias e="openEditor"

traceFunc() {
	LOG=$(node --trace-opt .)
	echo "$LOG" | grep $@
}
alias ntr="traceFunc"
