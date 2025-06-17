data "vault_kv_secret_v2" "gitlab_pl_rachuna_net_infrastructure_terraform" {
  mount = "gitlab"
  name  = "pl.rachuna-net/infrastructure/terraform"
}

data "vault_kv_secret_v2" "gitlab_pl_rachuna_net" {
  mount = "gitlab"
  name  = "pl.rachuna-net"
}
