data "vault_kv_secret_v2" "gitlab_pl_rachuna_net" {
  mount = "kv-gitlab"
  name  = "pl.rachuna-net"
}

data "vault_kv_secret_v2" "gitlab_pl_rachuna_net_infrastructure_terraform" {
  mount = "kv-gitlab"
  name  = "pl.rachuna-net/infrastructure/terraform"
}
