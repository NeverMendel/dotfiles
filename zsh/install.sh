#!/bin/bash

# Install plugins

plugins=(
	'zsh-users/zsh-autosuggestions:c3d4e576c9c86eac62884bd47c01f6faed043fc5'
	'zsh-users/zsh-history-substring-search:8dd05bfcc12b0cd1ee9ea64be725b3d9f713cf64'
	'zsh-users/zsh-syntax-highlighting:e0165eaa730dd0fa321a6a6de74f092fe87630b0'
)

plugin_folder=~/.zsh_plugin/

mkdir -p $plugin_folder

for plugin_info in "${plugins[@]}"; do
	plugin="${plugin_info%%:*}"
	sha_hash="${plugin_info##*:}"
	plugin_name=$(basename $plugin)
	if [ -d $plugin_folder/$plugin_name ]; then
		continue
	fi
	echo "Cloning $plugin"
	echo "SHA hash: $sha_hash"
	git clone https://github.com/$plugin $plugin_folder/$plugin_name >/dev/null 2>&1
	cd $plugin_folder/$plugin_name
	git reset --hard $sha_hash >/dev/null 2>&1
done
