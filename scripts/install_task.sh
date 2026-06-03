#!/usr/bin/env bash

source "$(dirname "$0")/common.sh"

if command_exists task; then
    success "Task already installed"
    exit 0
fi

info "Installing Task"

TASK_TMP=$(mktemp -d)

cd "$TASK_TMP" || exit

curl -sL https://taskfile.dev/install.sh | sh -s -- -d

mkdir -p "$HOME/.local/bin"

if [ -f "./bin/task" ]; then
    mv ./bin/task "$HOME/.local/bin/task"
    chmod +x "$HOME/.local/bin/task"
fi

rm -rf "$TASK_TMP"