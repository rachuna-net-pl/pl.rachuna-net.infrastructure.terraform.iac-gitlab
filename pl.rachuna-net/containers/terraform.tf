module "terraform" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-project.git?ref=v1.3.0"

  name        = "terraform"
  description = "Obraz Dockerowy z narzędziem Terraform."
  visibility  = "public"
  tags        = ["docker", "terraform"]
  icon_type   = "terraform"

  parent_group = local.parent_name
  project_type = local.project_type

  # sonarqube
  sonarqube_cloud_project_id = "pl.rachuna-net_terraform"
  is_enabled_sonarqube       = true

  mirror_url = format(
    "https://%s:%s@github.com/%s/%s.git",
    data.vault_kv_secret_v2.github.data["owner"],
    data.vault_kv_secret_v2.github.data["token"],
    data.vault_kv_secret_v2.github.data["owner"],
    "pl.rachuna-net.containers.terraform"
  )

  variables = {
    PUBLISH_VAULT_SECRET_PATH = {
      description = "Ścieżka do sekrety Vault, gdzie będą publikowane zmienne środowiskowe"
      value       = "pl.rachuna-net/containers/terraform:CONTAINER_IMAGE_TERRAFORM"
    }
    PUBLISH_VAULT_VALUE_VARIABLE = {
      description = "Nazwa zmiennej środowiskowej, która będzie publikowana w Vault"
      value       = "CONTAINER_IMAGE_VERSION"
    }
  }
}