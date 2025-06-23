module "_ansible" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-group.git?ref=v1.1.0"

  name         = "ansible"
  description  = "Repozytoria i moduły do zarządzania konfiguracją i automatyzacją zadań przy użyciu Ansible."
  parent_group = local.parent_name
  visibility   = "public"
  icon_type    = "ansible"

  variables = {
    GITLAB_SSH_KEY = {
      description = "Klucz SSH do maszyn testowych molecule dla Ansible Roles."
      value       = data.vault_kv_secret_v2.gitlab_pl_rachuna_net-infrastructure-ansible.data["GITLAB_SSH_KEY"]
    }
    ANSIBLE_USER = {
      description = "Użytkownik Ansible do zarządzania maszynami vm."
      masked      = true
      value       = data.vault_kv_secret_v2.gitlab_pl_rachuna_net-infrastructure-ansible.data["ANSIBLE_USER"]
    }
    ANSIBLE_PASSWORD = {
      description = "Hasło użytkownika Ansible do maszyn testowych molecule."
      masked      = true
      value       = data.vault_kv_secret_v2.gitlab_pl_rachuna_net-infrastructure-ansible.data["ANSIBLE_PASSWORD"]
    }
    ANSIBLE_USER_CT = {
      description = "Użytkownik Ansible do zarządzania maszynami ct."
      value       = data.vault_kv_secret_v2.gitlab_pl_rachuna_net-infrastructure-ansible.data["ANSIBLE_USER_CT"]
    }
  }
}

module "ansible" {
  source = "./ansible/"
}