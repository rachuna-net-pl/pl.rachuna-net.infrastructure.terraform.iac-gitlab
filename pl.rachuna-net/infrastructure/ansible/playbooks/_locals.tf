locals {
  parent_name = "pl.rachuna-net/infrastructure/ansible/playbooks"
}

data "vault_kv_secret_v2" "github" {
  mount = "kv-devops"
  name  = "github"
}