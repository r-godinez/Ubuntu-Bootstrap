#!/usr/bin/env bash

# WSL2 environment (client only)
source "$(dirname "$0")/common.sh"

if command_exists docker; then
    success "Docker already installed"
    exit 0
fi

info "Installing Docker CLI"

sudo apt-get update

sudo apt-get install -y \
    docker.io \
    docker-compose-v2