module "_terraform" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-group.git?ref=v1.1.0"

  name         = "terraform"
  description  = "Repozytoria i moduły do zarządzania infrastrukturą jako kodem (IaC)."
  parent_group = local.parent_name
  visibility   = "public"
  icon_type    = "terraform"
  variables = {
    VAULT_TOKEN = {
      description = "Vault token dla gitlab runnera do komunikacji z vaultem"
      value       = data.vault_kv_secret_v2.gitlab_pl_rachuna_net_infrastructure_terraform.data["VAULT_TOKEN"]
    }
  }
}

module "terraform" {
  source = "./terraform/"
}