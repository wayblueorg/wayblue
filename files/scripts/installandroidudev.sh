#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

curl -Lo /etc/yum.repos.d/_copr_ublue-os_staging.repo https://copr.fedorainfracloud.org/coprs/ublue-os/staging/repo/fedora-"${RELEASE}"/ublue-os-staging-fedora-"${RELEASE}".repo
rpm-ostree install android-udev-rules
rm /etc/yum.repos.d/_copr_ublue-os_staging.repo