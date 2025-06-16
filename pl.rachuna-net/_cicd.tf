module "_cicd" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-group.git?ref=v1.1.0"

  name         = "cicd"
  description  = "Centralne komponenty i procesy dla GitLab CI/CD."
  parent_group = local.parent_name
  visibility   = "public"
  icon_type    = "gitlab"

}

# module "cicd" {
#   source = "./cicd/"
# }