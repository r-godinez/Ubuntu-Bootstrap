#!/usr/bin/env bash

source "$(dirname "$0")/common.sh"

TOFU_VERSION="1.12.1"

CURRENT_VERSION=$(
    tofu version 2>/dev/null |
    head -1 |
    awk '{print $2}' |
    sed 's/v//'
)

if [ "$CURRENT_VERSION" = "$TOFU_VERSION" ]; then
    success "OpenTofu already installed"
    exit 0
fi

info "Installing OpenTofu"

cd /tmp || exit

curl \
--proto '=https' \
--tlsv1.2 \
-fsSL \
https://get.opentofu.org/install-opentofu.sh \
-o install-opentofu.sh

chmod +x install-opentofu.sh

sudo ./install-opentofu.sh --install-method deb