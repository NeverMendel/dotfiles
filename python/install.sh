#!/bin/bash

# create python environment in ~/.pvenv if it doesn't already exist
if [ ! -d "$HOME/.pvenv" ]; then
	python3 -m venv $HOME/.pvenv
fi
