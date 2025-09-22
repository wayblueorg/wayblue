#!/usr/bin/env bash

set -oue pipefail
echo '

import "/usr/share/ublue-os/just/50-brew.just"

' >> /usr/share/ublue-os/justfile
