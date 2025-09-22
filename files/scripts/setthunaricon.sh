#!/usr/bin/env bash

set -oue pipefail

sed -i 's/Icon=org.xfce.thunar/Icon=system-file-manager/' /usr/share/applications/thunar.desktop
