#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

sed -i 's/Icon=org.xfce.thunar/Icon=system-file-manager/' /usr/share/applications/thunar.desktop
sed -i 's/exo-open --working-directory %f --launch TerminalEmulator/foot -W %f/' /usr/etc/xdg/Thunar/uca.xml
