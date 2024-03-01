#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

sed -i 's/exo-open --working-directory %f --launch TerminalEmulator/foot -D %f/' /usr/etc/xdg/Thunar/uca.xml
