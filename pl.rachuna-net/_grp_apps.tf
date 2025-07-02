module "_apps" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-group.git?ref=v1.1.0"

  name         = "apps"
  description  = "Aplikacje i usługi"
  parent_group = local.parent_name
  visibility   = "public"
  icon_type    = ""
  # icon_type = "apps"

}

module "apps" {
  source = "./apps/"
}