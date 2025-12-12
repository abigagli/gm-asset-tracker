#!/usr/bin/env bash
#
# Rebuild DFU application zip after incremental builds

set -e

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Require build directory argument
if [ -z "$1" ]; then
    echo "Error: Build directory path must be provided" >&2
    echo "Usage: $0 <build-directory>" >&2
    echo "Example: $0 application/<APPNAME>/build" >&2
    exit 1
fi

BUILD_DIR="$1"

# Verify build directory exists
if [ ! -d "${BUILD_DIR}" ]; then
    echo "Error: Build directory '${BUILD_DIR}' does not exist" >&2
    exit 1
fi

echo "Removing old DFU zip files in ${BUILD_DIR}..."
rm -f "${BUILD_DIR}"/{dfu_application.zip,dfu_mcuboot.zip}

echo "Rebuilding DFU application zip..."
"${SCRIPT_DIR}/toolchain_launch.bash" west build -- -d "${BUILD_DIR}" -t dfu_application_zip

echo "Done! DFU zip files updated:"
ls -lh "${BUILD_DIR}"/dfu_*.zip
