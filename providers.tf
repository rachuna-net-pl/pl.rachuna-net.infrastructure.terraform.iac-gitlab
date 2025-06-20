terraform {
  required_providers {
    gitlab = {
      source = "gitlabhq/gitlab"
    }
    vault = {
      source  = "hashicorp/vault"
      version = "~> 5.0"
    }
  }
  backend "http" {}
}

provider "gitlab" {
  token    = data.vault_kv_secret_v2.gitlab_pl_rachuna_net.data["GITLAB_TOKEN"]
  base_url = var.gitlab_url
}

provider "vault" {
  address         = var.vault_address
  skip_tls_verify = false
}
