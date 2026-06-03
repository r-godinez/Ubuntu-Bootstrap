#!/usr/bin/env bash

set -uo pipefail

info() {
    echo ""
    echo "[INFO] $1"
}

success() {
    echo ""
    echo "[OK] $1"
}

warn() {
    echo ""
    echo "[WARN] $1"
}

run_safe() {
    "$@" || warn "Failed: $*"
}

command_exists() {
    command -v "$1" >/dev/null 2>&1
}