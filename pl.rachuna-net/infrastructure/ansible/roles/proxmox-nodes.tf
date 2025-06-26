module "proxmox-nodes" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-project.git?ref=v1.3.0"

  name        = "proxmox-nodes"
  description = "Ansible Role do zarządzania węzłami Proxmox VE."
  visibility  = "public"
  tags        = ["inventory", "ansible"]
  icon_type   = "proxmox"

  parent_group = local.parent_name
  project_type = "ansible-role"

  # sonarqube
  is_enabled_sonarqube = false

  mirror_url = format(
    "https://%s:%s@github.com/%s/%s.git",
    data.vault_kv_secret_v2.github.data["owner"],
    data.vault_kv_secret_v2.github.data["token"],
    data.vault_kv_secret_v2.github.data["owner"],
    "pl.rachuna-net.infrastructure.ansible.roles.proxmox-nodes"
  )
}