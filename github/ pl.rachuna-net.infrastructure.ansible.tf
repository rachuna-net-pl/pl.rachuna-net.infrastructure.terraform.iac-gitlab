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
