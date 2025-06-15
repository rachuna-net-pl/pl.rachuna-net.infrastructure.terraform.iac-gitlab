module "_containers" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-group.git?ref=v1.1.0"

  name         = "containers"
  description  = "Repozytoria z obrazami kontenerowymi."
  parent_group = local.parent_name
  visibility   = "public"
  icon_type    = "containers"
}

module "containers" {
  source = "./containers/"
}