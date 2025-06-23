module "proxmox-download-container" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-project.git?ref=v1.1.0"

  name        = "proxmox-download-container"
  description = "Moduł Terraform do pobierania szablonów kontenerów LXC (CT) z internetu i rejestrowania ich w środowisku Proxmox VE."
  visibility  = "public"
  tags        = ["terraform", "terraform-modules"]
  icon_type   = "proxmox"

  parent_group = local.parent_name
  project_type = local.project_type

  # sonarqube
  sonarqube_cloud_project_id = "pl.rachuna-net_proxmox-download-container"
  is_enabled_sonarqube       = true

  mirror_url = format(
    "https://%s:%s@github.com/%s/%s.git",
    data.vault_kv_secret_v2.github.data["owner"],
    data.vault_kv_secret_v2.github.data["token"],
    data.vault_kv_secret_v2.github.data["owner"],
    "pl.rachuna-net.infrastructure.terraform.modules.proxmox-download-container"
  )
}