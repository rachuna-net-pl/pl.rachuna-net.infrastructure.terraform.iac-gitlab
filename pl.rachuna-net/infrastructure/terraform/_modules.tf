module "_modules" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-group.git?ref=feat/2"

  name         = "modules"
  description  = "Terraform modules"
  parent_group = local.parent_name
  visibility   = "public"
  icon_type    = "terraform"
}

# module "modules" {
#   source = "./modules/"
# }