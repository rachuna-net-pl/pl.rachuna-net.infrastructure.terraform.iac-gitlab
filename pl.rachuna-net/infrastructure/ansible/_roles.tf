module "_roles" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-group.git?ref=v1.1.0"

  name         = "roles"
  description  = "Repozytoria Ansible Roles do zarządzania automatyzacją zadań przy użyciu Ansible."
  parent_group = local.parent_name
  visibility   = "public"
  icon_type    = "ansible"

  variables = {
    GITLAB_SSH_KEY = {
      description = "Klucz SSH do maszyn testowych molecule dla Ansible Roles."
      value       = data.vault_kv_secret_v2.gitlab_pl_rachuna_net-infrastructure-ansible-roles.data["GITLAB_SSH_KEY"]
    }
    TEST_PROXMOX_HOST = {
      description = "Adres hosta Proxmox do testów."
      value       = data.vault_kv_secret_v2.gitlab_pl_rachuna_net-infrastructure-ansible-roles.data["TEST_PROXMOX_HOST"]
    }
    TEST_PROXMOX_NODE = {
      description = "Nazwa węzła Proxmox do testów."
      value       = data.vault_kv_secret_v2.gitlab_pl_rachuna_net-infrastructure-ansible-roles.data["TEST_PROXMOX_NODE"]
    }
    TEST_PROXMOX_PASSWORD = {
      description = "Hasło do Proxmox do testów."
      masked      = true
      value       = data.vault_kv_secret_v2.gitlab_pl_rachuna_net-infrastructure-ansible-roles.data["TEST_PROXMOX_PASSWORD"]
    }
    TEST_PROXMOX_USER = {
      description = "Użytkownik Proxmox do testów."
      masked      = true
      value       = data.vault_kv_secret_v2.gitlab_pl_rachuna_net-infrastructure-ansible-roles.data["TEST_PROXMOX_USER"]
    }
    TEST_SSH_PUB_KEY = {
      description = "Publiczny klucz SSH do maszyn testowych molecule dla Ansible Roles."
      value       = data.vault_kv_secret_v2.gitlab_pl_rachuna_net-infrastructure-ansible-roles.data["TEST_SSH_PUB_KEY"]
    }
  }
}

module "roles" {
  source = "./roles/"
}