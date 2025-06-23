locals {
  parent_name  = "pl.rachuna-net/infrastructure/packer"
  project_type = "packer"
}

data "vault_kv_secret_v2" "github" {
  mount = "kv-devops"
  name  = "github"
}
