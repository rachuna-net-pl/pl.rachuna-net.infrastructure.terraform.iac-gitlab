module "vault" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-project.git?ref=v1.0.0"

  name        = "vault"
  description = "Obraz Dockerowy z narzędziem Vault"
  visibility  = "public"
  tags        = ["docker", "vault"]
  icon_type   = "vault"

  parent_group = local.parent_name
  project_type = local.project_type

  # sonarqube
  sonarqube_cloud_project_id = "pl.rachuna-net_vault"
  is_enabled_sonarqube       = true
}