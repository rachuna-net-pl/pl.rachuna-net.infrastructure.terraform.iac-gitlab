module "unit-test" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-project.git?ref=v1.3.0"

  name        = "unit-test"
  description = "Komponent do automatycznego uruchamiania testów jednostkowych w procesach CI/CD."
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
    "pl.rachuna-net.cicd.components.unit-test"
  )

  # sonarqube
  is_enabled_sonarqube = false

  variables = {
    PUBLISH_VAULT_SECRET_PATH = {
      description = "Ścieżka do sekrety Vault, gdzie będą publikowane zmienne środowiskowe"
      value       = "pl.rachuna-net/cicd/components/unit-test:COMPONENT_VERSION_UNIT_TEST"
    }
    PUBLISH_VAULT_VALUE_VARIABLE = {
      description = "Nazwa zmiennej środowiskowej, która będzie publikowana w Vault"
      value       = "RELEASE_CANDIDATE_TAG"
    }
  }
}