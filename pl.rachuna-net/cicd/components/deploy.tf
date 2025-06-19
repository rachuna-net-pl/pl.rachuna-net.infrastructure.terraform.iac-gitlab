module "deploy" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-project.git?ref=v1.0.1"

  name        = "deploy"
  description = "Komponent do wdrożeń bibliotek i aplikacj na środowiska"
  visibility  = "public"
  tags        = ["gitlab-component"]
  icon_type   = "gitlab-component"

  parent_group = local.parent_name
  project_type = local.project_type

  # sonarqube
  is_enabled_sonarqube = false
}

