#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

rm /usr/share/applications/org.gnome.ColorProfileViewer.desktop
rm /usr/share/applications/org.gnome.Settings.desktop
rm /usr/share/applications/org.gnome.Tecla.desktop
rm /usr/share/applications/org.gnome.Tour.desktop