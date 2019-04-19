# Oh my ZSH
if [ -d "$HOME/.oh-my-zsh" ]; then
    ZSH="$HOME/.oh-my-zsh"
else
	ZSH="/usr/share/oh-my-zsh"
fi

# Theme
ZSH_THEME="agnoster"

# Editor
export EDITOR="vim"

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

# Includes
source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
