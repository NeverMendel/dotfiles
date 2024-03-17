#!/bin/sh

if test ! $(which brew); then
	echo "Installing homebrew..."

	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

brew bundle --file=$HOME/.dotfiles/Brewfile
