#!/usr/bin/env bash

set -oue pipefail

curl -Lo /etc/yum.repos.d/_copr_ublue-os_staging.repo https://copr.fedorainfracloud.org/coprs/ublue-os/staging/repo/fedora-"${OS_VERSION}"/ublue-os-staging-fedora-"${OS_VERSION}".repo
rpm-ostree install android-udev-rules
rm /etc/yum.repos.d/_copr_ublue-os_staging.repo