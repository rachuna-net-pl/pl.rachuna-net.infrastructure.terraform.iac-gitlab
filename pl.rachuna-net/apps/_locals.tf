locals {
  parent_name = "pl.rachuna-net/apps"
}

data "vault_kv_secret_v2" "github" {
  mount = "kv-devops"
  name  = "github"
}
