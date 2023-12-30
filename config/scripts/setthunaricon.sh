#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

sed 's/Icon=org.xfce.thunar/Icon=thunar/' /usr/share/applications/thunar.desktop