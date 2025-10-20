#!/usr/bin/env bash

set -oue pipefail

RPMFUSION_FREE="https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-${OS_VERSION}.noarch.rpm"
RPMFUSION_NONFREE=https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-${OS_VERSION}.noarch.rpm


curl --retry 3 --retry-delay 5 -LO "${RPMFUSION_FREE}"
curl --retry 3 --retry-delay 5 -LO "${RPMFUSION_NONFREE}"

dnf install -y \
    "rpmfusion-free-release-${OS_VERSION}.noarch.rpm" \
    "rpmfusion-nonfree-release-${OS_VERSION}.noarch.rpm"