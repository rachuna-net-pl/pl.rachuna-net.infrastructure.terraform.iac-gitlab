module "vagrant" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-project.git?ref=v1.3.0"

  name        = "vagrant"
  description = "Konfiguracja środowiska deweloperskiego z użyciem Vagrant i VirtualBox."
  visibility  = "public"
  tags        = ["vagrant"]
  icon_type   = "vagrant"

  parent_group = local.parent_name
  project_type = ""

  # sonarqube
  is_enabled_sonarqube = false

  mirror_url = format(
    "https://%s:%s@github.com/%s/%s.git",
    data.vault_kv_secret_v2.github.data["owner"],
    data.vault_kv_secret_v2.github.data["token"],
    data.vault_kv_secret_v2.github.data["owner"],
    "pl.rachuna-net.tools.vagrant"
  )

}