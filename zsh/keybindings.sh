# Use cat -e to see non-printing characters and configure the following key bindings

# control + left/right arrow keys
bindkey ';5D' backward-word
bindkey ';5C' forward-word

# control + backspace
bindkey '^H' backward-kill-word

# control + delete
bindkey '^[[3;5~' kill-word

# home/end keys
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
