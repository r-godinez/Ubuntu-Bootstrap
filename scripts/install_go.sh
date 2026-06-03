#!/usr/bin/env bash

source "$(dirname "$0")/common.sh"

GO_VERSION="1.25.0"

CURRENT_VERSION=$(
    go version 2>/dev/null |
    awk '{print $3}' |
    sed 's/go//'
)

if [ "$CURRENT_VERSION" = "$GO_VERSION" ]; then
    success "Go already installed"
    exit 0
fi

info "Installing Go ${GO_VERSION}"

cd /tmp || exit

wget \
https://go.dev/dl/go${GO_VERSION}.linux-amd64.tar.gz

sudo rm -rf /usr/local/go

sudo tar -C /usr/local \
-xzf go${GO_VERSION}.linux-amd64.tar.gz

rm go${GO_VERSION}.linux-amd64.tar.gz