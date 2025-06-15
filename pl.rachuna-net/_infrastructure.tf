module "_infrastructure" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-group.git?ref=v1.1.0"

  name         = "infrastructure"
  description  = "Repozytoria i moduły do zarządzania infrastrukturą jako kodem (IaC)."
  parent_group = local.parent_name
  visibility   = "public"
  icon_type    = "infrastructure"
}

module "infrastructure" {
  source = "./infrastructure/"
}