#!/usr/bin/env bash

set -oue pipefail

sed -i 's/launcher_thunar = thunar.desktop/launcher_chromium = org.mozilla.firefox.desktop\nlauncher_thunar = thunar.desktop/' /usr/share/wayfire/wf-shell.ini 
