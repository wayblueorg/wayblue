#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

sed -i 's/sway\/workspaces/river\/tags/' /etc/xdg/waybar/config.jsonc
sed -i 's/sway\/mode/river\/mode/' /etc/xdg/waybar/config.jsonc
sed -i 's/sway\/window/river\/window/' /etc/xdg/waybar/config.jsonc
