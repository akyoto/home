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

# set PATH so it includes snap bin if it exists
if [ -d "/snap/bin" ] ; then
    export PATH="/snap/bin:$PATH"
fi

# Go
if [ -d "$HOME/workspace" ] ; then
	export GOPATH=$HOME/workspace
	export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin/
fi
