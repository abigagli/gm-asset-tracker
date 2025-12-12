#!/usr/bin/env bash
#
# Launch nRF Connect SDK shell

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Launch the toolchain with --shell argument
"${SCRIPT_DIR}/toolchain_launch.bash" --shell
