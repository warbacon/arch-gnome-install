#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
PACKAGES_FILE="$SCRIPT_DIR/packages.txt"

# Check if running as root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root."
   exit 1
fi

# Check if packages.txt file exists
if [ ! -f "$PACKAGES_FILE" ]; then
    echo "The 'packages.txt' file does not exist."
    exit 1
fi

packages=()

while IFS= read -r package; do
    packages+=("$package")
done < "$PACKAGES_FILE"

# Install packages and enable gdm
pacman -S "${packages[@]}" || exit 1
systemctl enable gdm

echo "Packages installed and gdm enabled."
