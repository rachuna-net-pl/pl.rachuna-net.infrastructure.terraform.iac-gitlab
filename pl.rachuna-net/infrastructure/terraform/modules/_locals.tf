locals {
  parent_name  = "pl.rachuna-net/infrastructure/terraform/modules"
  project_type = "terraform-module"
}

data "vault_kv_secret_v2" "github" {
  mount = "kv-devops"
  name  = "github"
}
