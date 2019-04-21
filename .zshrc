# Oh my ZSH
if [ -d "$HOME/.oh-my-zsh" ]; then
    ZSH="$HOME/.oh-my-zsh"
else
	ZSH="/usr/share/oh-my-zsh"
fi

# Disable theme
ZSH_THEME=""

# ZSH config
DISABLE_AUTO_UPDATE="true"
ZSH_CACHE_DIR="$HOME/.cache/oh-my-zsh"

if [[ ! -d $ZSH_CACHE_DIR ]]; then
	mkdir $ZSH_CACHE_DIR
fi

# Plugins
plugins=(
	archlinux
	git
	golang
)

# Language
export LANG="en_US.utf8"
export LC_ALL=$LANG

# Includes
source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Pure theme prompt
autoload -U promptinit; promptinit
PURE_PROMPT_SYMBOL=λ
prompt pure

# Editor
export EDITOR="vim"

# Remove aliases
unalias -m "*"

# ls
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'

# Colors for ls and grep
test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Go
alias gb='go build'
alias gg='go get'
alias gt='go test'
alias gi='go install'
alias ggu='go get -u'
alias bench='go test -run=^$ -bench'
alias outdated='go list -u -m -json all | go-mod-outdated -update -direct'

# Git
alias gs='git status'
alias gd='git diff'
alias gp='git pull'
alias gc='git clone'

# Go and Git
alias goloc='git ls-files | grep "\.go$" | xargs wc -l | sort -rn'

# Docker
alias d='docker'
alias di='docker images'
alias dc='docker-compose'
alias dcb='docker-compose build'
alias dcr='docker-compose run'
