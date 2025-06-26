module "semantic-release" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-project.git?ref=v1.3.0"

  name        = "semantic-release"
  description = "Obraz Dockerowy z narzędziem Semantic-Release."
  visibility  = "public"
  tags        = ["docker", "semantic-release"]
  icon_type   = "semantic-release"

  parent_group = local.parent_name
  project_type = local.project_type

  # sonarqube
  sonarqube_cloud_project_id = "pl.rachuna-net_semantic-release"
  is_enabled_sonarqube       = true

  mirror_url = format(
    "https://%s:%s@github.com/%s/%s.git",
    data.vault_kv_secret_v2.github.data["owner"],
    data.vault_kv_secret_v2.github.data["token"],
    data.vault_kv_secret_v2.github.data["owner"],
    "pl.rachuna-net.containers.semantic-release"
  )

  variables = {
    PUBLISH_VAULT_SECRET_PATH = {
      description = "Ścieżka do sekrety Vault, gdzie będą publikowane zmienne środowiskowe"
      value       = "pl.rachuna-net/containers/semantic-release:CONTAINER_IMAGE_SEMANTIC_RELEASE"
    }
    PUBLISH_VAULT_VALUE_VARIABLE = {
      description = "Nazwa zmiennej środowiskowej, która będzie publikowana w Vault"
      value       = "CONTAINER_IMAGE_VERSION"
    }
  }
}