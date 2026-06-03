#!/usr/bin/env bash

source "$(dirname "$0")/common.sh"

append_if_missing() {

    local LINE="$1"

    grep -qxF "$LINE" ~/.bashrc ||
        echo "$LINE" >> ~/.bashrc
}

append_if_missing ""
append_if_missing "# Bootstrap Dev"

append_if_missing 'export PATH=$PATH:/usr/local/go/bin'
append_if_missing 'export PATH=$PATH:$HOME/.local/bin'

append_if_missing 'export GOPATH=$HOME/go'
append_if_missing 'export PATH=$PATH:$GOPATH/bin'

append_if_missing "alias tf='tofu'"
append_if_missing "alias k='kubectl'"
append_if_missing "alias ll='ls -lah'"

success ".bashrc updated"