module "iac-vault" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-project.git?ref=v1.3.0"

  name        = "iac-vault"
  description = "Repozytorium zawierające infrastrukturę jako kod (IaC) do zarządzania środowiskiem Vault przy użyciu Terraform. Umożliwia automatyzację tworzenia, konfiguracji i utrzymania zasobów Vault."
  visibility  = "public"
  tags        = ["terraform"]
  icon_type   = "vault"

  parent_group = local.parent_name
  project_type = local.project_type

  # sonarqube
  sonarqube_cloud_project_id = "pl.rachuna-net_iac-vault"
  is_enabled_sonarqube       = true
}