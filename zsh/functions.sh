command_not_found_handler() {
	if [ -x /usr/lib/command-not-found ]; then
		/usr/lib/command-not-found -- "$1"
		return $?
	else
		if [ -x /usr/share/command-not-found/command-not-found ]; then
			/usr/share/command-not-found/command-not-found -- "$1"
			return $?
		else
			printf "%s: command not found\n" "$1" 1>&2
			return 127
		fi
	fi
}
