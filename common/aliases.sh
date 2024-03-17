#!/bin/bash

# ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Easier navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias cls='clear'

# IP address
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

# Reload the shell
alias reload="exec ${SHELL} -l"

# Get date and time
alias datetime='date "+%Y-%m-%d %H:%M:%S"'