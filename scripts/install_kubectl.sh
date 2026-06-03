#!/usr/bin/env bash

source "$(dirname "$0")/common.sh"

if command_exists kubectl; then
    success "kubectl already installed"
    exit 0
fi

info "Installing kubectl"

VERSION=$(curl -L -s https://dl.k8s.io/release/stable.txt)

curl -LO \
"https://dl.k8s.io/release/${VERSION}/bin/linux/amd64/kubectl"

chmod +x kubectl

sudo mv kubectl /usr/local/bin/