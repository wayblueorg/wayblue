#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

for file in /usr/share/hyprland/*.png; do
    if [[ $file == *anime*.png ]]; then
        rm "$file"
        echo "Removed: $file"
    fi
done
