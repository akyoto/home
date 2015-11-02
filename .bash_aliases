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

# git
alias gs='git status'
alias gd='git diff'
alias gl='git log'
alias gp='git push'
alias gcam='git commit -a -m'
alias sp='sugoi push'

# p PROJECTNAME
goProject() { cd "$HOME/projects/$@"; }
alias p="goProject"

# d DIRNAME
mkdirAndEnter() { mkdir $@; cd $@; }
alias d="mkdirAndEnter"
