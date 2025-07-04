resource "github_repository" "pl-rachuna-net-infrastructure-ansible-gitlab-profile" {
  name        = "pl.rachuna-net.infrastructure.ansible.gitlab-profile"
  description = ""
  visibility  = "public"
}

resource "github_repository" "pl-rachuna-net-infrastructure-ansible-inventory" {
  name        = "pl.rachuna-net.infrastructure.ansible.inventory"
  description = "Repozytorium Ansible Inventory do zarządzania konfiguracją i automatyzacją zadań przy użyciu Ansible."
  visibility  = "public"
}

resource "github_repository" "pl-rachuna-net-infrastructure-ansible-playbooks-linux-hardening" {
  name        = "pl.rachuna-net.infrastructure.ansible.playbooks.linux-hardening"
  description = "Playbook Ansible do automatycznego hardeningu i provisioningu systemów Linux."
  visibility  = "public"
}

resource "github_repository" "pl-rachuna-net-infrastructure-ansible-playbooks-gitlab-runners" {
  name        = "pl.rachuna-net.infrastructure.ansible.playbooks.gitlab-runners"
  description = "Playbook Ansible do automatyzacji instalacji i konfiguracji GitLab Runnerów."
  visibility  = "public"
}

resource "github_repository" "pl-rachuna-net-infrastructure-ansible-roles-configure-ssh" {
  name        = "pl.rachuna-net.infrastructure.ansible.roles.configure-ssh"
  description = "Ansible Role do konfiguracji SSH na serwerach Linux."
  visibility  = "public"
}

resource "github_repository" "pl-rachuna-net-infrastructure-ansible-roles-configure-sudo" {
  name        = "pl.rachuna-net.infrastructure.ansible.roles.configure-sudo"
  description = "Ansible Role do konfiguracji sudo na serwerach Linux."
  visibility  = "public"
}

resource "github_repository" "pl-rachuna-net-infrastructure-ansible-roles-set-hostname" {
  name        = "pl.rachuna-net.infrastructure.ansible.roles.set-hostname"
  description = "Ansible Role do ustawiania nazwy hosta (hostname) na serwerach Linux."
  visibility  = "public"
}

resource "github_repository" "pl-rachuna-net-infrastructure-ansible-roles-install-packages" {
  name        = "pl.rachuna-net.infrastructure.ansible.roles.install-packages"
  description = "Ansible Role do instalacji pakietów na serwerach Linux."
  visibility  = "public"
}

resource "github_repository" "pl-rachuna-net-infrastructure-ansible-roles-proxmox-nodes" {
  name        = "pl.rachuna-net.infrastructure.ansible.roles.proxmox-nodes"
  description = "Ansible Role do zarządzania węzłami Proxmox VE."
  visibility  = "public"
}

resource "github_repository" "pl-rachuna-net-infrastructure-ansible-roles-ca-certificates" {
  name        = "pl.rachuna-net.infrastructure.ansible.roles.ca-certificates"
  description = "Ansible Role do konfiguracji certyfikatów CA na serwerach Linux."
  visibility  = "public"
}

resource "github_repository" "pl-rachuna-net-infrastructure-ansible-roles-users-management" {
  name        = "pl.rachuna-net.infrastructure.ansible.roles.users-management"
  description = "Ansible Role do zarządzania użytkownikami na serwerach Linux."
  visibility  = "public"
}

resource "github_repository" "pl-rachuna-net-infrastructure-ansible-roles-deploy-gitlab-runner" {
  name        = "pl.rachuna-net.infrastructure.ansible.roles.deploy-gitlab-runner"
  description = "Ansible Role do automatyzacji instalacji i konfiguracji GitLab Runnerów."
  visibility  = "public"
}