locals {
  parent_name = "pl.rachuna-net/infrastructure/ansible/roles"
}

data "vault_kv_secret_v2" "github" {
  mount = "kv-devops"
  name  = "github"
}

data "vault_kv_secret_v2" "pl_rachuna-net_infrastructure_ansible_roles_deploy-gitlab-runner" {
  mount = "kv-gitlab"
  name  = "pl.rachuna-net/infrastructure/ansible/roles/deploy-gitlab-runner"
}