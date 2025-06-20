module "gitlab-project" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-project.git?ref=feat/101"

  name        = "gitlab-project"
  description = "Moduł służy do automatycznego zakładania projektów w GitLab z wykorzystaniem standaryzacji, ochrony branchy, tagów, zmiennych CI oraz integracji z SonarQube."
  visibility  = "public"
  tags        = ["terraform", "terraform-modules"]
  icon_type   = "gitlab"

  parent_group = local.parent_name
  project_type = local.project_type

  # sonarqube
  sonarqube_cloud_project_id = "pl.rachuna-net_gitlab-project"
  is_enabled_sonarqube       = true
}