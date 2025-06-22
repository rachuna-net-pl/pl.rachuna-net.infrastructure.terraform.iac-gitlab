module "alpine" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-project.git?ref=v1.1.0"

  name        = "alpine"
  description = "Template Alpine dla Proxmox generowany przez Packer"
  visibility  = "public"
  tags        = ["terraform"]
  icon_type   = "alpine-linux"

  parent_group = local.parent_name
  project_type = local.project_type

  mirror_url = format(
    "https://%s:%s@github.com/%s/%s.git",
    data.vault_kv_secret_v2.github.data["owner"],
    data.vault_kv_secret_v2.github.data["token"],
    data.vault_kv_secret_v2.github.data["owner"],
    "pl.rachuna-net.infrastructure.packer.alpine"
  )

  # sonarqube
  is_enabled_sonarqube       = false
}