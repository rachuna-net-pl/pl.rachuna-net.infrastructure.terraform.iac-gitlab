module "_tools" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-group.git?ref=v1.1.0"

  name         = "tools"
  description  = "Narzedzia i skrypty do automatyzacji zadań administracyjnych i zarządzania infrastrukturą."
  parent_group = local.parent_name
  visibility   = "public"
  icon_type    = "dev-tools"
}

module "tools" {
  source = "./tools/"
}