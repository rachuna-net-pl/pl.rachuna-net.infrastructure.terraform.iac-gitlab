module "gitlab-ci" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-project.git?ref=v1.0.1"

  name        = "gitlab-ci"
  description = "Procesy do ciągłej integracji i dostarczania (CI/CD) dla projektów w grupie pl.rachuna-net"
  visibility  = "public"
  tags        = ["gitlab-ci", "ci"]
  icon_type   = "gitlab"

  parent_group = local.parent_name
  project_type = "gitlab-ci"

  # sonarqube
  is_enabled_sonarqube = false
}