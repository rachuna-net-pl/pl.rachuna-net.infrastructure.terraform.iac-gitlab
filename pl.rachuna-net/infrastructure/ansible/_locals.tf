locals {
  parent_name = "pl.rachuna-net/infrastructure/ansible"
}

data "vault_kv_secret_v2" "github" {
  mount = "kv-devops"
  name  = "github"
}
data "vault_kv_secret_v2" "gitlab_pl_rachuna_net-infrastructure-ansible-roles" {
  mount = "kv-gitlab"
  name  = "pl.rachuna-net/infrastructure/ansible/roles"
}
