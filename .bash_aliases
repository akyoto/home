#!/bin/bash

# node.js
alias n='node'
alias nr='npm run'
alias ni='npm install'
alias nig='npm install -g'
alias nt='npm test'
alias n:='npm search'
alias b='ab -kc 10 -t 30'

# projects
goProject() { cd "$HOME/projects/$@"; }
alias p="goProject"

# git
alias gs='git status'
alias gcam='git commit -a -m'
alias sp='sugoi push'
