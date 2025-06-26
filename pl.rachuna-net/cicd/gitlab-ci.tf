module "gitlab-ci" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-project.git?ref=v1.3.0"

  name        = "gitlab-ci"
  description = "Procesy do ciągłej integracji i dostarczania (CI/CD) dla projektów w grupie pl.rachuna-net"
  visibility  = "public"
  tags        = ["gitlab-ci", "ci"]
  icon_type   = "gitlab"

  parent_group = local.parent_name
  project_type = "gitlab-ci"

  mirror_url = format(
    "https://%s:%s@github.com/%s/%s.git",
    data.vault_kv_secret_v2.github.data["owner"],
    data.vault_kv_secret_v2.github.data["token"],
    data.vault_kv_secret_v2.github.data["owner"],
    "pl.rachuna-net.cicd.gitlab-ci"
  )

  # sonarqube
  is_enabled_sonarqube = false

  variables = {
    PUBLISH_VAULT_SECRET_PATH = {
      description = "Ścieżka do sekrety Vault, gdzie będą publikowane zmienne środowiskowe"
      value       = "pl.rachuna-net/cicd/gitlab-ci:GITLAB_CI_VERSION"
    }
    PUBLISH_VAULT_VALUE_VARIABLE = {
      description = "Nazwa zmiennej środowiskowej, która będzie publikowana w Vault"
      value       = "RELEASE_CANDIDATE_VERSION"
    }
  }
}