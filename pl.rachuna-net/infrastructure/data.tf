data "vault_kv_secret_v2" "gitlab_pl_rachuna_net-infrastructure-packer" {
  mount = "kv-gitlab"
  name  = "pl.rachuna-net/infrastructure/packer"
}