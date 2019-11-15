#!/bin/bash
echo "# --------------------------------------------------------------------- #"
echo "# Checking if script is running as 'root'..."
echo "# --------------------------------------------------------------------- #"
local commandname="CHECK"
local function_selfname="$(basename "$(readlink -f "${BASH_SOURCE[0]}")")"
if [ "$(whoami)" = "root" ]; then
	if [ "${function_selfname}" != "command_install.sh" ]; then
		fn_print_fail_nl "# Do NOT run this script as root!"
		if [ -d "${lgsmlogdir}" ]; then
			fn_script_log_fatal "${selfname} attempted to run as root."
		fi
		core_exit.sh
	fi
fi
