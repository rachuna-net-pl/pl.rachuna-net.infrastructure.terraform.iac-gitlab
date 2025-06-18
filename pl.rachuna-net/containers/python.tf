module "python" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-project.git?ref=v1.0.0"

  name        = "python"
  description = "Obraz Dockerowy z Python."
  visibility  = "public"
  tags        = ["docker", "python"]
  icon_type   = "python"

  parent_group = local.parent_name
  project_type = local.project_type

  # sonarqube
  sonarqube_cloud_project_id = "pl.rachuna-net_python"
  is_enabled_sonarqube       = true
}