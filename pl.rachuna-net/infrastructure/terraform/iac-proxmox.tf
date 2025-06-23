module "iac-proxmox" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-project.git?ref=v1.1.0"

  name        = "iac-proxmox"
  description = "Repozytorium zawierające infrastrukturę jako kod (IaC) do zarządzania środowiskiem Proxmox przy użyciu Terraform. Umożliwia automatyzację tworzenia, konfiguracji i utrzymania zasobów Proxmox."
  visibility  = "public"
  tags        = ["terraform"]
  icon_type   = "proxmox"

  parent_group = local.parent_name
  project_type = local.project_type

  # sonarqube
  sonarqube_cloud_project_id = "pl.rachuna-net_iac-proxmox"
  is_enabled_sonarqube       = true

  mirror_url = format(
    "https://%s:%s@github.com/%s/%s.git",
    data.vault_kv_secret_v2.github.data["owner"],
    data.vault_kv_secret_v2.github.data["token"],
    data.vault_kv_secret_v2.github.data["owner"],
    "pl.rachuna-net.infrastructure.terraform.iac-proxmox"
  )
}