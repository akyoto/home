ZSH=/usr/share/oh-my-zsh
ZSH_THEME="agnoster"
DISABLE_AUTO_UPDATE="true"

plugins=(
	archlinux
	git
	golang
)

export EDITOR="vim"

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh

if [[ ! -d $ZSH_CACHE_DIR ]]; then
	mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
