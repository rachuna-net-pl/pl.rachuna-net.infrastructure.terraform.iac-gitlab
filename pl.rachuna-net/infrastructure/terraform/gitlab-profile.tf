module "gitlab-profile" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-project.git?ref=v1.3.0"

  name        = "gitlab-profile"
  description = ""
  visibility  = "public"
  tags        = ["gitlab-profile"]
  icon_type   = "gitlab-profile"

  parent_group = local.parent_name
  project_type = "gitlab-profile"

  # sonarqube
  is_enabled_sonarqube = false

  mirror_url = format(
    "https://%s:%s@github.com/%s/%s.git",
    data.vault_kv_secret_v2.github.data["owner"],
    data.vault_kv_secret_v2.github.data["token"],
    data.vault_kv_secret_v2.github.data["owner"],
    "pl.rachuna-net.infrastructure.terraform.gitlab-profile"
  )
}