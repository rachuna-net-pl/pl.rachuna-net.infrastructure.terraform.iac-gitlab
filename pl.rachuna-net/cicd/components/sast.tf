module "sast" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-project.git?ref=feat/101"

  name        = "sast"
  description = "Komponent do analizy statycznej kodu źródłowego (SAST)."
  visibility  = "public"
  tags        = ["gitlab-component"]
  icon_type   = "gitlab-component"

  parent_group = local.parent_name
  project_type = local.project_type

  mirror_url = format(
    "https://%s:%s@github.com/%s/%s.git",
    data.vault_kv_secret_v2.github.data["owner"],
    data.vault_kv_secret_v2.github.data["token"],
    data.vault_kv_secret_v2.github.data["owner"],
    "pl.rachuna-net.cicd.components.sast"
  )

  # sonarqube
  is_enabled_sonarqube = false

  variables = {
    PUBLISH_VAULT_SECRET_PATH = {
      description = "Ścieżka do sekrety Vault, gdzie będą publikowane zmienne środowiskowe"
      value       = "pl.rachuna-net:COMPONENT_VERSION_SAST"
    }
    PUBLISH_VAULT_VALUE_VARIABLE = {
      description = "Nazwa zmiennej środowiskowej, która będzie publikowana w Vault"
      value       = "RELEASE_CANDIDATE_TAG"
    }
  }
}