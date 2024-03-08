#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

mv /usr/share/xsessions/gnome.desktop /usr/share/xsessions/99-gnome.desktop 
mv /usr/share/xsessions/gnome-xorg.desktop /usr/share/xsessions/99-gnome-xorg.desktop 
mv /usr/share/wayland-sessions/gnome.desktop /usr/share/wayland-sessions/99-gnome.desktop
mv /usr/share/wayland-sessions/gnome-wayland.desktop /usr/share/wayland-sessions/99-gnome-wayland.desktop
rm /usr/share/applications/gnome-*.desktop
rm /usr/share/applications/org.gnome.ColorProfileViewer.desktop
rm /usr/share/applications/org.gnome.Evolution-alarm-notify.desktop
rm /usr/share/applications/org.gnome.evolution-data-server.OAuth2-handler.desktop
rm /usr/share/applications/org.gnome.Settings.desktop
rm /usr/share/applications/org.gnome.Shell.desktop
rm /usr/share/applications/org.gnome.Shell.Extensions.desktop
rm /usr/share/applications/org.gnome.Shell.PortalHelper.desktop
rm /usr/share/applications/org.gnome.Tecla.desktop
rm /usr/share/applications/org.gnome.Tour.desktop