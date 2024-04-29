eval "$(fzf --zsh)"

if command -v fd; then
	FZF_DEFAULT_COMMAND='fd --type f'
fi

FZF_SKIP=".git,node_modules,target,.local,.docker,.opam,.cache,.nvm,.npm,.pvenv,.vscode-server,.vscode-remote-containers"
FZF_DEFAULT_OPTS="--walker-skip $FZF_SKIP"

if command -v bat; then
	FZF_CTRL_T_OPTS="
    --preview-window hidden
    --preview 'bat -n --color=always {}'
    --bind 'ctrl-t:change-preview-window(right|down|hidden)'"
else
	FZF_CTRL_T_OPTS="
    --preview-window hidden
    --preview 'cat {}'
    --bind 'ctrl-t:change-preview-window(right|down|hidden)'"
fi
