#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

sed -i 's/Icon=org.xfce.thunar/Icon=system-file-manager/' /usr/share/applications/thunar.desktop
