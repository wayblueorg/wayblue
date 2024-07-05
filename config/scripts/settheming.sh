#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

# Removing this for now since it breaks steam layering.
# https://github.com/ublue-os/bluefin/issues/1258
# sed -i 's/Inherits=Adwaita/Inherits=Papirus/' /usr/share/icons/default/index.theme 
