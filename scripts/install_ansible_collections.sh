#!/usr/bin/env bash

source "$(dirname "$0")/common.sh"

if ! command_exists ansible-galaxy; then
    warn "Ansible not installed"
    exit 1
fi

info "Installing Ansible collections"

ansible-galaxy collection install community.general
ansible-galaxy collection install community.proxmox
ansible-galaxy collection install kubernetes.core