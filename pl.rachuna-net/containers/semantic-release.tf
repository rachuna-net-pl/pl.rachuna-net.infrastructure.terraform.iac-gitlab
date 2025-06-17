module "semantic-release" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-project.git?ref=v1.0.1"

  name        = "semantic-release"
  description = "Obraz Dockerowy z narzędziem Semantic-Release."
  visibility  = "public"
  tags        = ["docker", "semantic-release"]
  icon_type   = "semantic-release"

  parent_group = local.parent_name
  project_type = local.project_type

  # sonarqube
  sonarqube_cloud_project_id = "pl.rachuna-net_semantic-release"
  is_enabled_sonarqube       = true
}