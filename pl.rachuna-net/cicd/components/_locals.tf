locals {
  parent_name  = "pl.rachuna-net/cicd/components"
  project_type = "gitlab-component"
}

data "vault_kv_secret_v2" "github" {
  mount = "kv-devops"
  name  = "github"
}
