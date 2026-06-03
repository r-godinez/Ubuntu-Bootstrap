#!/usr/bin/env bash

source "$(dirname "$0")/common.sh"

git config --global init.defaultBranch main

git config --global pull.rebase false

success "Git configured"