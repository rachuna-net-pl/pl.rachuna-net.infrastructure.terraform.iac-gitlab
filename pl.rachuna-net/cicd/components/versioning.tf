module "versioning" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-project.git?ref=v1.0.0"

  name        = "versioning"
  description = "Komponent wspierający automatyczne wersjonowanie kodu oraz procesów CI/CD w projektach GitLab."
  visibility  = "public"
  tags        = ["gitlab-component", "semantic-release"]
  icon_type   = "gitlab-component"

  parent_group = local.parent_name
  project_type = local.project_type

  # sonarqube
  sonarqube_cloud_project_id = "pl.rachuna-net_versioning"
  is_enabled_sonarqube       = true
}