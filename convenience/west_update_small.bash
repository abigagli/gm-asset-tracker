#!/usr/bin/env bash
#
# Executes a west update with clone-depth set to 1

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Launch the toolchain with --shell argument
"${SCRIPT_DIR}/toolchain_launch.bash" west -- update -o=--depth=1 -n "$@"
