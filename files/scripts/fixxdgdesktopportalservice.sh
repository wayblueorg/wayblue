#!/usr/bin/env bash

set -oue pipefail

sed '/Requisite.graphical-session.target/d' -i /usr/lib/systemd/user/xdg-desktop-portal.service
