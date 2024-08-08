#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

sed -i 's/sway\/workspaces/hyprland\/workspaces/' /etc/xdg/waybar/config.jsonc
sed -i 's/sway\/mode/hyprland\/submap/' /etc/xdg/waybar/config.jsonc
sed -i 's/sway\/window/hyprland\/window/' /etc/xdg/waybar/config.jsonc
