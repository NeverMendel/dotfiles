#!/bin/bash

if test $(which opam); then
	eval $(opam env)
fi
