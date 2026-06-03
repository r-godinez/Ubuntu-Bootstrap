#!/usr/bin/env bash

source "$(dirname "$0")/common.sh"

if command_exists tflint; then
    success "tflint already installed"
    exit 0
fi

info "Installing tflint"

curl -s \
https://raw.githubusercontent.com/terraform-linters/tflint/master/install_linux.sh \
| bash