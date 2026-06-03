#!/usr/bin/env bash

source "$(dirname "$0")/common.sh"

echo ""
echo "========== TOOL VERSIONS =========="
echo ""

command -v go >/dev/null && go version
command -v tofu >/dev/null && tofu version
command -v python3 >/dev/null && python3 --version
command -v ansible >/dev/null && ansible --version | head -n1
command -v docker >/dev/null && docker --version
command -v kubectl >/dev/null && kubectl version --client
command -v helm >/dev/null && helm version
command -v k9s >/dev/null && k9s version
command -v task >/dev/null && task --version
command -v terraform-docs >/dev/null && terraform-docs version
command -v tflint >/dev/null && tflint --version
command -v sops >/dev/null && sops --version

echo ""
echo "==================================="