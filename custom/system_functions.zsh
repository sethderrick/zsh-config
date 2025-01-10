run_nocorrect() {
    unsetopt correct	# Disable autocorrect
    "$@"		# Run the command passed as arguments
    ret=$?		# Capture the return code of the command
    setopt correct	# Re-enable autocorrect
    return $ret		# Return the original command's exit status
}

