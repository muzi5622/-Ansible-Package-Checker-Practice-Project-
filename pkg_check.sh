#!/bin/bash

# List of packages to check
PACKAGES=("tree" "curl" "git")

echo "[pkg_check]"
ip=$(hostname -I | awk '{print $1}')
echo "ip_address=${ip}"

# Loop through packages
for pkg in "${PACKAGES[@]}"; do
    if command -v "$pkg" >/dev/null 2>&1; then
        echo "${pkg}_installed=true"
    else
        echo "${pkg}_installed=false"
    fi
done
