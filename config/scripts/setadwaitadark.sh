#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3-dark' 
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'