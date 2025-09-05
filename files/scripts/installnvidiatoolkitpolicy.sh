#!/usr/bin/env bash

set -oue pipefail

semodule --verbose --install /usr/share/selinux/packages/nvidia-container.pp