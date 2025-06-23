module "configure-sudo" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-project.git?ref=v1.1.0"

  name        = "configure-sudo"
  description = "Ansible Role do konfiguracji sudo na serwerach Linux."
  visibility  = "public"
  tags        = ["inventory", "ansible"]
  icon_type   = "linux"

  parent_group = local.parent_name
  project_type = "ansible-role"

  # sonarqube
  is_enabled_sonarqube = false

  mirror_url = format(
    "https://%s:%s@github.com/%s/%s.git",
    data.vault_kv_secret_v2.github.data["owner"],
    data.vault_kv_secret_v2.github.data["token"],
    data.vault_kv_secret_v2.github.data["owner"],
    "pl.rachuna-net.infrastructure.ansible.roles.configure-sudo"
  )
}