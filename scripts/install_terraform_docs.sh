#!/usr/bin/env bash

source "$(dirname "$0")/common.sh"

if command_exists terraform-docs; then
    success "terraform-docs already installed"
    exit 0
fi

VERSION="0.20.0"

curl -Lo terraform-docs.tar.gz \
https://github.com/terraform-docs/terraform-docs/releases/download/v${VERSION}/terraform-docs-v${VERSION}-linux-amd64.tar.gz

tar -xzf terraform-docs.tar.gz

sudo mv terraform-docs /usr/local/bin/

rm terraform-docs.tar.gz