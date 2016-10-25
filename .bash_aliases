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

# HTTP benchmarking
alias b='wrk -t8 -c400 -d2s'

# git
alias gs='git status'
alias gd='git diff'
alias gl='git log'
alias gp='git pull'
alias gu='git push'
alias gc='git clone'
alias gm='git commit'
alias gr='git recent'
alias loc='git ls-files | grep "\.go$" | xargs cloc'

# sugoi
alias s='sugoi'
alias sp='sugoi push'

# aerospike
alias dbup='sudo service aerospike start'
alias dbdown='sudo service aerospike stop'

# p PROJECTNAME
goProject() { cd "$HOME/projects/$@"; }
goWorkspace() { cd "$HOME/workspace/$@"; }
alias p="goProject"
alias w="goWorkspace"

# d DIRNAME
mkdirAndEnter() { mkdir $@; cd $@; }
alias d="mkdirAndEnter"

# editor
export EDITOR=vim
openEditor() { test -w $@ && vim $@ || sudo vim $@; }
alias e="openEditor"

# node
traceFunc() {
	LOG=$(node --trace-opt .)
	echo "$LOG" | grep $@
}
alias ntr="traceFunc"
