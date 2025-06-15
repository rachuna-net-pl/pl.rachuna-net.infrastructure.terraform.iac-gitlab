module "_modules" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-group.git?ref=feat/19"

  name         = "modules"
  description  = "Zbiór modułów Terraform do zarządzania infrastrukturą."
  parent_group = local.parent_name
  visibility   = "public"
  icon_type    = "terraform"
}

module "modules" {
  source = "./modules/"
}