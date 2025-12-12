#!/usr/bin/env bash
#
# Launch nRF Connect SDK toolchain with specified arguments
#
# Usage: toolchain_launch.bash [arguments...]
# All arguments are passed directly to 'nrfutil sdk-manager toolchain launch'

~/.nrfutil/bin/nrfutil sdk-manager toolchain launch --ncs-version v3.1.1 "$@"
