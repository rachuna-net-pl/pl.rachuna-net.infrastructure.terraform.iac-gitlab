module "_pl_rachuna-net" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-group.git?ref=v1.1.0"

  name           = "pl.rachuna-net"
  description    = "https://rachuna-net.pl"
  parent_group   = "" # Brak grupy nadrzędnej
  visibility     = "public"
  default_branch = "main"
  labels         = jsondecode(file("${path.module}/data/labels.json"))
  icon_type      = "root"

  badges = jsondecode(file("${path.module}/data/group_badges.json"))
  variables = {
    GITLAB_SSH_KEY = {
      description = "Klucz SSH dla gitlab runnera do komunikacji z gitlabem"
      value       = data.vault_kv_secret_v2.gitlab_pl_rachuna_net.data["GITLAB_SSH_KEY"]
    }
    VAULT_TOKEN = {
      description = "Vault token dla gitlab runnera do komunikacji z vaultem"
      value       = data.vault_kv_secret_v2.gitlab_pl_rachuna_net.data["VAULT_TOKEN"]
    }
    GITLAB_TOKEN = {
      description = "GitLab Token dla gitlab runnera"
      value       = data.vault_kv_secret_v2.gitlab_pl_rachuna_net.data["GITLAB_TOKEN"]
    }
    SONAR_TOKEN = {
      description = "SonarQube Token dla gitlab runnera"
      value       = data.vault_kv_secret_v2.gitlab_pl_rachuna_net.data["SONAR_TOKEN"]
    }
    COMPONENT_VERSION_BUILD = {
      description = "Numer wersji komponentu build"
      value       = data.vault_kv_secret_v2.gitlab_pl_rachuna_net.data["COMPONENT_VERSION_BUILD"]
    }
    COMPONENT_VERSION_PUBLISH = {
      description = "Numer wersji komponentu publish"
      value       = data.vault_kv_secret_v2.gitlab_pl_rachuna_net.data["COMPONENT_VERSION_PUBLISH"]
    }
    COMPONENT_VERSION_INTEGRATION_TEST = {
      description = "Numer wersji komponentu testów integracyjnych"
      value       = data.vault_kv_secret_v2.gitlab_pl_rachuna_net.data["COMPONENT_VERSION_INTEGRATION_TEST"]
    }
    COMPONENT_VERSION_RELEASE = {
      description = "Numer wersji komponentu release"
      value       = data.vault_kv_secret_v2.gitlab_pl_rachuna_net.data["COMPONENT_VERSION_RELEASE"]
    }
    COMPONENT_VERSION_SAST = {
      description = "Numer wersji komponentu SAST"
      value       = data.vault_kv_secret_v2.gitlab_pl_rachuna_net.data["COMPONENT_VERSION_SAST"]
    },
    COMPONENT_VERSION_UNIT_TEST = {
      description = "Numer wersji komponentu testów jednostkowych"
      value       = data.vault_kv_secret_v2.gitlab_pl_rachuna_net.data["COMPONENT_VERSION_UNIT_TEST"]
    },
    COMPONENT_VERSION_VALIDATE = {
      description = "Numer wersji komponentu walidacji"
      value       = data.vault_kv_secret_v2.gitlab_pl_rachuna_net.data["COMPONENT_VERSION_VALIDATE"]
    }
    CONTAINER_IMAGE_PYTHON = {
      description = "Obraz kontenera Python"
      value       = data.vault_kv_secret_v2.gitlab_pl_rachuna_net.data["CONTAINER_IMAGE_PYTHON"]
    }
    CONTAINER_IMAGE_SEMANTIC_RELEASE = {
      description = "Obraz kontenera Semantic Release"
      value       = data.vault_kv_secret_v2.gitlab_pl_rachuna_net.data["CONTAINER_IMAGE_SEMANTIC_RELEASE"]
    }
    CONTAINER_IMAGE_SONAR_SCANNER = {
      description = "Obraz kontenera Sonar Scanner"
      value       = data.vault_kv_secret_v2.gitlab_pl_rachuna_net.data["CONTAINER_IMAGE_SONAR_SCANNER"]
    },
    CONTAINER_IMAGE_TERRAFORM = {
      description = "Obraz kontenera Terraform"
      value       = data.vault_kv_secret_v2.gitlab_pl_rachuna_net.data["CONTAINER_IMAGE_TERRAFORM"]
    }
    CONTAINER_IMAGE_VAULT = {
      description = "Obraz kontenera Vault"
      value       = data.vault_kv_secret_v2.gitlab_pl_rachuna_net.data["CONTAINER_IMAGE_VAULT"]
    },
    CONTAINER_IMAGE_PYTHON = {
      description = "Obraz kontenera Python"
      value       = data.vault_kv_secret_v2.gitlab_pl_rachuna_net.data["CONTAINER_IMAGE_PYTHON"]
    }
    VAULT_ADDR = {
      description = "Adres serwera Vault"
      value       = data.vault_kv_secret_v2.gitlab_pl_rachuna_net.data["VAULT_ADDR"]
    }
  }
}

module "pl-rachuna-net" {
  source = "./pl.rachuna-net/"
}

module "github" {
  source = "./github/"

  github_token = data.vault_kv_secret_v2.gitlab_pl_rachuna_net_infrastructure_terraform.data["github_token"]
  github_owner = data.vault_kv_secret_v2.gitlab_pl_rachuna_net_infrastructure_terraform.data["github_owner"]

}

