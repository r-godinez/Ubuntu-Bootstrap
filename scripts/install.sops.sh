#!/usr/bin/env bash

source "$(dirname "$0")/common.sh"

if command_exists sops; then
    success "sops already installed"
    exit 0
fi

VERSION="3.11.0"

curl -Lo sops \
https://github.com/getsops/sops/releases/download/v${VERSION}/sops-v${VERSION}.linux.amd64

chmod +x sops

sudo mv sops /usr/local/bin/