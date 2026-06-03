#!/usr/bin/env bash

set -e

echo "Starting bootstrap..."

./scripts/install_base.sh

./scripts/install_go.sh

./scripts/install_tofu.sh

./scripts/install_python_tools.sh

./scripts/install_task.sh

./scripts/install_kubectl.sh

./scripts/install_helm.sh

./scripts/install_k9s.sh

./scripts/install_tflint.sh

./scripts/install_terraform_docs.sh

./scripts/install_sops.sh

./scripts/configure_git.sh

./scripts/configure_bash.sh

./scripts/configure_docker.sh

./scripts/install_ansible_collections.sh

./scripts/verify_environment.sh

echo ""
echo "Bootstrap complete."