module "unit-test" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-project.git?ref=v1.0.1"

  name        = "unit-test"
  description = "Komponent do automatycznego uruchamiania testów jednostkowych w procesach CI/CD."
  visibility  = "public"
  tags        = ["gitlab-component"]
  icon_type   = "gitlab-component"

  parent_group = local.parent_name
  project_type = local.project_type

  # sonarqube
  sonarqube_cloud_project_id = "pl.rachuna-net_unit-test"
  is_enabled_sonarqube       = true
}