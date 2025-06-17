module "terraform" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-project.git?ref=v1.0.1"

  name        = "terraform"
  description = "Obraz Dockerowy z narzędziem Terraform."
  visibility  = "public"
  tags        = ["docker", "terraform"]
  icon_type   = "terraform"

  parent_group = local.parent_name
  project_type = local.project_type

  # sonarqube
  sonarqube_cloud_project_id = "pl.rachuna-net_terraform"
  is_enabled_sonarqube       = true
}