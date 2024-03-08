#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

rm /usr/share/xsessions/*
rm /usr/share/wayland-sessions/gnome.desktop
rm /usr/share/wayland-sessions/gnome-wayland.desktop
rm /usr/share/applications/org.gnome.ColorProfileViewer.desktop
rm /usr/share/applications/org.gnome.Evolution-alarm-notify.desktop
rm /usr/share/applications/org.gnome.evolution-data-server.OAuth2-handler.desktop
rm /usr/share/applications/org.gnome.Settings.desktop
rm /usr/share/applications/org.gnome.Shell.desktop
rm /usr/share/applications/org.gnome.Shell.Extensions.desktop
rm /usr/share/applications/org.gnome.Shell.PortalHelper.desktop
rm /usr/share/applications/org.gnome.Tecla.desktop
rm /usr/share/applications/org.gnome.Tour.desktop