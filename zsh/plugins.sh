plugin_folder=~/.zsh_plugin/

if [ ! -d $plugin_folder ]; then
	return
fi

for plugin in $plugin_folder/*; do
	plugin_name=$(basename $plugin)
	source $plugin/$plugin_name.zsh
done

# zsh-history-substring-search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
