#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

sed -i 's/sway\/workspaces/hyprland\/workspaces/' /usr/etc/xdg/waybar/config
sed -i 's/sway\/mode/hyprland\/submap/' /usr/etc/xdg/waybar/config
sed -i 's/sway\/window/hyprland\/window/' /usr/etc/xdg/waybar/config
