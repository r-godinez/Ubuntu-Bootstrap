#!/usr/bin/env bash

source "$(dirname "$0")/common.sh"

info "Installing base packages"

sudo apt-get update

sudo apt-get install -y \
    curl \
    wget \
    git \
    unzip \
    zip \
    jq \
    tree \
    vim \
    nano \
    htop \
    btop \
    tmux \
    build-essential \
    python3 \
    python3-dev \
    python3-venv \
    python3-pip \
    pipx \
    shellcheck \
    yamllint \
    age \
    yq