#!/usr/bin/env bash

set -oue pipefail

sed -i 's/sway\/workspaces/river\/tags/' /etc/xdg/waybar/config.jsonc
sed -i 's/sway\/mode/river\/mode/' /etc/xdg/waybar/config.jsonc
sed -i 's/sway\/window/river\/window/' /etc/xdg/waybar/config.jsonc
