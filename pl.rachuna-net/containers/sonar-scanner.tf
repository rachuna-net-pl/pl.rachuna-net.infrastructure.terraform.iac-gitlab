module "sonar-scanner" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-project.git?ref=v1.1.0"

  name        = "sonar-scanner"
  description = "Obraz Dockerowy z narzędziem Sonar Scanner do analizy kodu źródłowego."
  visibility  = "public"
  tags        = ["docker", "sonar-scanner"]
  icon_type   = "sonarqube"

  parent_group = local.parent_name
  project_type = local.project_type

  # sonarqube
  sonarqube_cloud_project_id = "pl.rachuna-net_sonar-scanner"
  is_enabled_sonarqube       = true

  mirror_url = format(
    "https://%s:%s@github.com/%s/%s.git",
    data.vault_kv_secret_v2.github.data["owner"],
    data.vault_kv_secret_v2.github.data["token"],
    data.vault_kv_secret_v2.github.data["owner"],
    "pl.rachuna-net.containers.sonar-scanner"
  )

  variables = {
    PUBLISH_VAULT_SECRET_PATH = {
      description = "Ścieżka do sekrety Vault, gdzie będą publikowane zmienne środowiskowe"
      value       = "pl.rachuna-net/containers/sonar-scanner:CONTAINER_IMAGE_SONAR_SCANNER"
    }
    PUBLISH_VAULT_VALUE_VARIABLE = {
      description = "Nazwa zmiennej środowiskowej, która będzie publikowana w Vault"
      value       = "CONTAINER_IMAGE_VERSION"
    }
  }
}