#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

rm /usr/share/xsessions/*
rm /usr/share/wayland-sessions/gnome.desktop
rm /usr/share/wayland-sessions/gnome-wayland.desktop