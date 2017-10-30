#!/bin/bash

# Navigation
alias c='cd'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# Go
alias g='go'
alias gb='go build'
alias gg='go get'
alias gt='go test'
alias gi='go install'
alias ggu='go get -u'
alias bench='go test -run=^$ -bench'

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
alias db='sudo service aerospike'

# p PROJECTNAME
goProject() { cd $(readlink -f "$HOME/projects/$@"); }
goApp() { cd $(readlink -f "$HOME/apps/$@"); }
goWorkspace() { cd "$HOME/workspace/$@"; }
alias p=goProject
alias a=goApp
alias w=goWorkspace

# d DIRNAME
mkdirAndEnter() { mkdir $@; cd $@; }
alias d=mkdirAndEnter

# editor
export EDITOR=vim
openEditor() { test -w $@ && vim $@ || sudo vim $@; }
alias e=openEditor
