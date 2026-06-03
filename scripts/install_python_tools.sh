#!/usr/bin/env bash

source "$(dirname "$0")/common.sh"

pipx ensurepath

export PATH="$HOME/.local/bin:$PATH"

if ! command_exists ansible; then
    pipx install --include-deps ansible
fi

if ! command_exists poetry; then
    pipx install poetry
fi

if ! command_exists pre-commit; then
    pipx install pre-commit
fi