module "release" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-project.git?ref=v1.0.1"

  name        = "release"
  description = "Komponent do zarządzania wersjami i publikacji bibliotek i aplikacji na środowiska produkcyjne"
  visibility  = "public"
  tags        = ["gitlab-component", "semantic-release"]
  icon_type   = "gitlab-component"

  parent_group = local.parent_name
  project_type = local.project_type

  # sonarqube
  is_enabled_sonarqube = false
}