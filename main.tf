module "_pl_rachuna-net" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-group.git?ref=feat/2"

  name           = "pl.rachuna-net"
  description    = "https://rachuna-net.pl"
  parent_group   = "" # Brak grupy nadrzędnej
  visibility     = "public"
  default_branch = "main"
  labels         = local.labels
  icon_type      = "root"

  badges    = jsondecode(file("${path.module}/group_badges.json"))
  variables = jsondecode(file("${path.module}/group_variables.json"))
}

module "pl-rachuna-net" {
  source = "./pl.rachuna-net/"
}

module "github" {
  source = "./github/"

  github_token = var.github_token
  github_owner = var.github_owner
}

