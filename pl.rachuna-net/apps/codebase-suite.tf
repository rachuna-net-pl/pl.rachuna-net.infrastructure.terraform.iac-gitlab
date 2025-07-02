module "codebase-suite" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-project.git?ref=v1.3.0"

  name        = "codebase-suite"
  description = "Aplikacja wspomagająca pracę devops."
  visibility  = "public"
  tags        = ["python", "codebase-suite"]
  icon_type   = "python"

  parent_group = local.parent_name
  project_type = ""

  # sonarqube
  sonarqube_cloud_project_id = "pl.rachuna-net_codebase-suite"
  is_enabled_sonarqube       = true

  mirror_url = format(
    "https://%s:%s@github.com/%s/%s.git",
    data.vault_kv_secret_v2.github.data["owner"],
    data.vault_kv_secret_v2.github.data["token"],
    data.vault_kv_secret_v2.github.data["owner"],
    "pl.rachuna-net.infrastructure.terraform.codebase-suite"
  )
}