#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

# Temporary workaround until ublue upstream is fixed. See https://github.com/wayblueorg/wayblue/issues/64
curl -Lo /etc/udev/rules.d/51-android.rules https://raw.githubusercontent.com/M0Rf30/android-udev-rules/main/51-android.rules
