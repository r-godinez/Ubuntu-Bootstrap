#!/usr/bin/env bash

source "$(dirname "$0")/common.sh"

if command_exists helm; then
    success "Helm already installed"
    exit 0
fi

info "Installing Helm"

curl -fsSL \
https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 \
| bash