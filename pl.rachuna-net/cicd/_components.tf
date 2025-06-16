module "_components" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-group.git?ref=v1.0.0"

  name         = "components"
  description = "Wspólne komponenty wykorzystywane w procesach CI/CD."
  parent_group = local.parent_name
  visibility   = "public"
  icon_type    = "gitlab"
}

# module "components" {
#   source = "./components/"
# }