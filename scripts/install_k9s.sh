#!/usr/bin/env bash

source "$(dirname "$0")/common.sh"

if command_exists k9s; then
    success "k9s already installed"
    exit 0
fi

info "Installing k9s"

curl -fsSL https://webinstall.dev/k9s | bash