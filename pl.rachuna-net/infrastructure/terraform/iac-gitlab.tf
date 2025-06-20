module "iac-gitlab" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-project.git?ref=v1.1.0"

  name        = "iac-gitlab"
  description = "Repozytorium zawierające infrastrukturę jako kod (IaC) do zarządzania środowiskiem GitLab przy użyciu Terraform. Umożliwia automatyzację tworzenia, konfiguracji i utrzymania zasobów GitLab."
  visibility  = "public"
  tags        = ["terraform"]
  icon_type   = "gitlab"

  parent_group = local.parent_name
  project_type = local.project_type

  # sonarqube
  sonarqube_cloud_project_id = "pl.rachuna-net_gitlab"
  is_enabled_sonarqube       = true
}