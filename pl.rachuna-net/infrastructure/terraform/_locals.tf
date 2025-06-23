locals {
  parent_name  = "pl.rachuna-net/infrastructure/terraform"
  project_type = "terraform"
}

data "vault_kv_secret_v2" "github" {
  mount = "kv-devops"
  name  = "github"
}
