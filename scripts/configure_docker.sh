#!/usr/bin/env bash

source "$(dirname "$0")/common.sh"

if ! getent group docker >/dev/null; then
    sudo groupadd docker
fi

if groups "$USER" | grep -q docker; then
    success "User already in docker group"
else
    sudo usermod -aG docker "$USER"

    warn "Restart WSL after bootstrap"
    warn "Run: wsl --shutdown"
fi