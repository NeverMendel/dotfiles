autoload -Uz vcs_info

# Display git branch in prompt
zstyle ':vcs_info:git:*' formats '%b '

PROMPT='%F{cyan}%n%f@%m %F{cyan}%~%f %F{red}${vcs_info_msg_0_}%f$ '

# function preexec() {
# 	timer=$(($(date +%s%0N) / 1000000))
# }

function precmd() {
	vcs_info
	title "zsh" "%m" "%40<...<%~"
	# 	if [[ -n $timer ]]; then
	# 		now=$(($(date +%s%0N) / 1000000))
	# 		elapsed=$(($now - $timer))

	# 		if [[ $elapsed -ge 1000 ]]; then
	# 			elapsed=$((elapsed / 1000)) # Convert milliseconds to seconds if greater than or equal to 1000
	# 			unit="s"
	# 		else
	# 			unit="ms"
	# 		fi

	# 		RPROMPT="%F{cyan}${elapsed}${unit} %{$reset_color%}"
	# 		unset timer
	# 	else
	# 		RPROMPT=""
	# 	fi
}
