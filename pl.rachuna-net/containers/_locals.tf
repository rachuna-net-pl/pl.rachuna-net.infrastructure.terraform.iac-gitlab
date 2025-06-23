locals {
  parent_name  = "pl.rachuna-net/containers"
  project_type = "container"
}

data "vault_kv_secret_v2" "github" {
  mount = "kv-devops"
  name  = "github"
}
