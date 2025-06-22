module "ubuntu" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-project.git?ref=v1.1.0"

  name        = "ubuntu"
  description = "Template Ubuntu dla Proxmox generowany przez Packer"
  visibility  = "public"
  tags        = ["terraform"]
  icon_type   = "ubuntu"

  parent_group = local.parent_name
  project_type = local.project_type

  mirror_url = format(
    "https://%s:%s@github.com/%s/%s.git",
    data.vault_kv_secret_v2.github.data["owner"],
    data.vault_kv_secret_v2.github.data["token"],
    data.vault_kv_secret_v2.github.data["owner"],
    "pl.rachuna-net.infrastructure.packer.ubuntu"
  )

  # sonarqube
  is_enabled_sonarqube       = false
}