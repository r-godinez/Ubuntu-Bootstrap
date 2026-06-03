# Ubuntu-Bootstrap
Linux 6.6.114.1-microsoft-standard-WSL2 #1 SMP PREEMPT_DYNAMIC Mon Dec  1 20:46:23 UTC 2025 x86_64 GNU/Linux

# Bootstrap Dev Environment

A modular, idempotent Ubuntu/WSL2 development environment bootstrap focused on Infrastructure as Code (IaC), DevOps, Platform Engineering, Cloud, Kubernetes, and Software Development.

This repository automates the installation and configuration of common development tools used for:

* OpenTofu
* Ansible
* Go
* Python
* Docker
* Kubernetes
* Helm
* k9s
* Task
* Terraform/OpenTofu tooling
* Secrets management

The bootstrap process is organized into reusable modules, making it easy to maintain, extend, and execute individual components.

---

# Features

* Idempotent installation scripts
* Modular architecture
* Task-based execution
* WSL2 compatible
* Ubuntu compatible
* Docker Desktop integration support
* Infrastructure as Code tooling
* Kubernetes tooling
* Secure secrets tooling
* Easy onboarding for new machines

---

# Repository Structure

```text
bootstrap-dev/
├── bootstrap.sh
├── Taskfile.yml
├── README.md
│
├── scripts/
│   ├── common.sh
│   ├── install_base.sh
│   ├── install_go.sh
│   ├── install_tofu.sh
│   ├── install_python_tools.sh
│   ├── install_task.sh
│   ├── install_docker_tools.sh
│   ├── install_kubectl.sh
│   ├── install_helm.sh
│   ├── install_k9s.sh
│   ├── install_tflint.sh
│   ├── install_terraform_docs.sh
│   ├── install_sops.sh
│   ├── configure_git.sh
│   ├── configure_docker.sh
│   ├── configure_bash.sh
│   ├── install_ansible_collections.sh
│   └── verify_environment.sh
│
├── configs/
│   ├── bashrc_append
│   └── gitconfig
│
└── logs/
```

---

# Supported Platforms

## Windows 11 + WSL2

Recommended configuration:

```text
Windows 11
├── Docker Desktop
├── VS Code
├── Tailscale
│
└── Ubuntu WSL2
    ├── OpenTofu
    ├── Ansible
    ├── Python
    ├── Go
    ├── kubectl
    ├── Helm
    └── Task
```

## Native Ubuntu

Tested against modern Ubuntu releases.

---

# Prerequisites

Install:

* Ubuntu (WSL2 or Native)
* sudo privileges
* Internet connectivity

Verify:

```bash
sudo -v
```

---

# Installation

Clone the repository:

```bash
git clone <repository-url>
cd bootstrap-dev
```

Make scripts executable:

```bash
find scripts -type f -name "*.sh" -exec chmod +x {} \;
chmod +x bootstrap.sh
```

Run the full bootstrap:

```bash
./bootstrap.sh
```

or

```bash
task all
```

---

# Available Tasks

Install everything:

```bash
task all
```

Install base packages:

```bash
task base
```

Install development tooling:

```bash
task tooling
```

Install Kubernetes tooling:

```bash
task kubernetes
```

Install Infrastructure as Code tooling:

```bash
task iac
```

Configure shell and Git:

```bash
task config
```

Install Ansible collections:

```bash
task ansible
```

Verify environment:

```bash
task verify
```

---

# Installed Tooling

## Development

* Go
* Python
* Poetry
* Pre-commit

## Infrastructure as Code

* OpenTofu
* tflint
* terraform-docs

## Configuration Management

* Ansible
* community.general
* community.proxmox
* kubernetes.core

## Kubernetes

* kubectl
* Helm
* k9s

## Security

* age
* sops

## Utilities

* Task
* jq
* yq
* shellcheck
* yamllint
* tmux
* htop
* btop

---

# Docker

For WSL2 users:

Install Docker Desktop on Windows.

Enable:

```text
Docker Desktop
→ Settings
→ Resources
→ WSL Integration
→ Enable Ubuntu
```

Verify:

```bash
docker ps
```

If Docker permissions require sudo:

```bash
sudo usermod -aG docker $USER
```

Then restart WSL:

```powershell
wsl --shutdown
```

---

# Verification

Check installed tooling:

```bash
task verify
```

Example output:

```text
go version go1.25.x linux/amd64
OpenTofu v1.12.x
Python 3.14.x
ansible [core 2.20.x]
kubectl v1.34.x
helm v3.x
docker version
task version
```

---

# Development Workflow

Typical workflow:

```bash
git pull

task all

task verify
```

This ensures the workstation remains consistent and up-to-date.

---

# Example Infrastructure Repository Layout

```text
Projects/
├── infrastructure/
│   ├── proxmox-tofu/
│   ├── modules/
│   └── environments/
│
├── ansible/
│   ├── bootstrap/
│   ├── k3s/
│   └── pihole/
│
├── kubernetes/
│
├── go/
│
└── python/
```

---

# Future Enhancements

Potential future modules:

* Tailscale
* Terragrunt
* FluxCD
* ArgoCD
* Proxmox CLI tooling
* AWS CLI
* Azure CLI
* GitHub CLI
* Podman
* Local LLM tooling
* K3d
* Kind
* Minikube

---

# License

MIT License

---

# Author

Ricardo Godinez

Focused on Platform Engineering, DevOps, Cloud Infrastructure, Automation, Kubernetes, OpenTofu, and Cybersecurity.
