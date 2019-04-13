# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.

# if running bash
if [ -n "$BASH_VERSION" ]; then
	# include .bashrc if it exists
	if [ -f "$HOME/.bashrc" ]; then
		. "$HOME/.bashrc"
	fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.bin" ] ; then
    export PATH="$HOME/.bin:$PATH"
fi

# Include ~/.local/bin in PATH
if [ -d "$HOME/.local/bin" ] ; then
    export PATH="$HOME/.local/bin:$PATH"
fi

# set PATH so it includes snap bin if it exists
if [ -d "/snap/bin" ] ; then
    export PATH="/snap/bin:$PATH"
fi

# Go compiler
if [ -d "/usr/local/go" ] ; then
	export PATH=$PATH:/usr/local/go/bin
fi

# Go installed binaries
if [ -d "$HOME/go/bin" ] ; then
	export PATH="$HOME/go/bin:$PATH"
fi

# Anime Notifier
if [ -d "$HOME/projects/animenotifier/notify.moe" ] ; then
	export ARN_ROOT=$HOME/projects/animenotifier/notify.moe
fi
