module "docs" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-project.git?ref=v1.1.0"

  name        = "docs"
  description = "Dokumentacja projektu pl.rachuna-net"
  visibility  = "public"
  tags        = ["mkdocs", "documentation"]
  icon_type   = "docs"

  parent_group = local.parent_name
  project_type = "docs"

  # sonarqube
  is_enabled_sonarqube = false

  mirror_url = format(
    "https://%s:%s@github.com/%s/%s.git",
    data.vault_kv_secret_v2.github.data["owner"],
    data.vault_kv_secret_v2.github.data["token"],
    data.vault_kv_secret_v2.github.data["owner"],
    "pl.rachuna-net.docs"
  )

}