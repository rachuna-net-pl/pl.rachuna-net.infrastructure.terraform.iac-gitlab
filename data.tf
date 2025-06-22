data "vault_kv_secret_v2" "gitlab_pl_rachuna_net" {
  mount = "kv-gitlab"
  name  = "pl.rachuna-net"
}

data "vault_kv_secret_v2" "gitlab_pl_rachuna_net_auth_gitlab" {
  mount = "kv-gitlab"
  name  = "pl.rachuna-net/auth/gitlab"
}

data "vault_kv_secret_v2" "gitlab_pl-rachuna-net_cicd_gitlab-ci" {
  mount = "kv-gitlab"
  name  = "pl.rachuna-net/cicd/gitlab-ci"
}

data "vault_kv_secret_v2" "gitlab_pl-rachuna-net_cicd_components_build" {
  mount = "kv-gitlab"
  name  = "pl.rachuna-net/cicd/components/build"
}

data "vault_kv_secret_v2" "gitlab_pl-rachuna-net_cicd_components_deploy" {
  mount = "kv-gitlab"
  name  = "pl.rachuna-net/cicd/components/deploy"
}

data "vault_kv_secret_v2" "gitlab_pl-rachuna-net_cicd_components_integration-test" {
  mount = "kv-gitlab"
  name  = "pl.rachuna-net/cicd/components/integration-test"
}

data "vault_kv_secret_v2" "gitlab_pl-rachuna-net_cicd_components_prepare" {
  mount = "kv-gitlab"
  name  = "pl.rachuna-net/cicd/components/prepare"
}

data "vault_kv_secret_v2" "gitlab_pl-rachuna-net_cicd_components_publish" {
  mount = "kv-gitlab"
  name  = "pl.rachuna-net/cicd/components/publish"
}

data "vault_kv_secret_v2" "gitlab_pl-rachuna-net_cicd_components_release" {
  mount = "kv-gitlab"
  name  = "pl.rachuna-net/cicd/components/release"
}

data "vault_kv_secret_v2" "gitlab_pl-rachuna-net_cicd_components_sast" {
  mount = "kv-gitlab"
  name  = "pl.rachuna-net/cicd/components/sast"
}

data "vault_kv_secret_v2" "gitlab_pl-rachuna-net_cicd_components_unit-test" {
  mount = "kv-gitlab"
  name  = "pl.rachuna-net/cicd/components/unit-test"
}

data "vault_kv_secret_v2" "gitlab_pl-rachuna-net_cicd_components_validate" {
  mount = "kv-gitlab"
  name  = "pl.rachuna-net/cicd/components/validate"
}

data "vault_kv_secret_v2" "gitlab_pl-rachuna-net_containers_mkdocs" {
  mount = "kv-gitlab"
  name  = "pl.rachuna-net/containers/mkdocs"
}

data "vault_kv_secret_v2" "gitlab_pl-rachuna-net_containers_python" {
  mount = "kv-gitlab"
  name  = "pl.rachuna-net/containers/python"
}

data "vault_kv_secret_v2" "gitlab_pl-rachuna-net_containers_semantic-release" {
  mount = "kv-gitlab"
  name  = "pl.rachuna-net/containers/semantic-release"
}

data "vault_kv_secret_v2" "gitlab_pl-rachuna-net_containers_sonar-scanner" {
  mount = "kv-gitlab"
  name  = "pl.rachuna-net/containers/sonar-scanner"
}

data "vault_kv_secret_v2" "gitlab_pl-rachuna-net_containers_terraform" {
  mount = "kv-gitlab"
  name  = "pl.rachuna-net/containers/terraform"
}

data "vault_kv_secret_v2" "gitlab_pl-rachuna-net_containers_vault" {
  mount = "kv-gitlab"
  name  = "pl.rachuna-net/containers/vault"
}