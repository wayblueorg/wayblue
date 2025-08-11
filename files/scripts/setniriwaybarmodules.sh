#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

sed -i 's/sway\/workspaces/niri\/tags/' /etc/xdg/waybar/config.jsonc
sed -i 's/sway\/mode/niri\/mode/' /etc/xdg/waybar/config.jsonc
sed -i 's/sway\/window/niri\/window/' /etc/xdg/waybar/config.jsonc
