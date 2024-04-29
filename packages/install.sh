#!/bin/bash

FZF_VERSION="0.50.0"
OS=$(uname | tr '[:upper:]' '[:lower:]')
ARCH=$(uname -m | sed 's/x86_64/amd64/' | sed 's/aarch64/arm64/')

packages=(
	# 'bat'
	'curl'
	# 'fdfind'
	'git'
	'htop'
	'neovim'
	'python3'
	'python-is-python3'
	'tmux'
	'wget'
	'zsh'
)

for package in "${packages[@]}"; do
	if ! command -v $package &>/dev/null; then
		sudo apt install -y $package
		if ! command -v $package &>/dev/null; then
			echo "Failed to install $package"
		fi
	fi
done

# link fd to fdfind
# if ! command -v fd &>/dev/null; then
# 	sudo ln -s $(which fdfind) /usr/bin/fd
# fi

# download fzf from github to get a more up to date version
if ! command -v fzf &>/dev/null; then
  wget "https://github.com/junegunn/fzf/releases/download/${FZF_VERSION}/fzf-${FZF_VERSION}-${OS}_${ARCH}.tar.gz" -O /tmp/fzf.tar.gz
  tar -xzf /tmp/fzf.tar.gz -C /tmp
  sudo mv /tmp/fzf /usr/bin/fzf
  rm /tmp/fzf.tar.gz
fi
