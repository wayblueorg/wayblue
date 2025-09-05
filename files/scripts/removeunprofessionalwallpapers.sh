#!/usr/bin/env bash

set -oue pipefail

for file in /usr/share/hyprland/*.png; do
    if [[ $file == *anime*.png || $file == wall2.png ]]; then
        rm "$file"
        echo "Removed: $file"
    fi
done
