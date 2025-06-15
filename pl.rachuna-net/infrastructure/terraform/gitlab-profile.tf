module "gitlab-profile" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-project.git?ref=v1.0.0"

  name        = "gitlab-profile"
  description = "GitLab profile"
  visibility  = "public"
  tags        = ["gitlab-profile"]
  icon_type   = "gitlab-profile"

  parent_group = local.parent_name
  project_type = "gitlab-profile"

  # sonarqube
  is_enabled_sonarqube = false

}