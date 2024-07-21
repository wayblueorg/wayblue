#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

sed -i 's/sway\/workspaces/river\/tags/' /usr/etc/xdg/waybar/config.jsonc
sed -i 's/sway\/mode/river\/mode/' /usr/etc/xdg/waybar/config.jsonc
sed -i 's/sway\/window/river\/window/' /usr/etc/xdg/waybar/config.jsonc
