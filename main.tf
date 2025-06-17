module "_pl_rachuna-net" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-group.git?ref=v1.1.0"

  name           = "pl.rachuna-net"
  description    = "https://rachuna-net.pl"
  parent_group   = "" # Brak grupy nadrzędnej
  visibility     = "public"
  default_branch = "main"
  labels         = jsondecode(file("${path.module}/data/labels.json"))
  icon_type      = "root"

  badges = jsondecode(file("${path.module}/data/group_badges.json"))
  variables = merge(
    jsondecode(file("${path.module}/data/group_variables.json")),
    {
      GITLAB_SSH_KEY = {
        description = "SSH Key for GitLab"
        value       = data.vault_kv_secret_v2.gitlab_pl_rachuna_net.data["GITLAB_SSH_KEY"]
      }
      VAULT_TOKEN = {
        description = "Vault Token for GitLab"
        value       = data.vault_kv_secret_v2.gitlab_pl_rachuna_net.data["VAULT_TOKEN"]
      }
      GITLAB_TOKEN = {
        description = "GitLab Token for GitLab"
        value       = data.vault_kv_secret_v2.gitlab_pl_rachuna_net.data["GITLAB_TOKEN"]
      }
    }
  )
}

module "pl-rachuna-net" {
  source = "./pl.rachuna-net/"
}

module "github" {
  source = "./github/"

  github_token = data.vault_kv_secret_v2.gitlab_pl_rachuna_net_infrastructure_terraform.data["github_token"]
  github_owner = data.vault_kv_secret_v2.gitlab_pl_rachuna_net_infrastructure_terraform.data["github_owner"]

}

