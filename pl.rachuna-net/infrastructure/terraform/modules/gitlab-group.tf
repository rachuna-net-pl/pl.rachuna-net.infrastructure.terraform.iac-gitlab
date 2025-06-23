module "gitlab-group" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-project.git?ref=v1.1.0"

  name        = "gitlab-group"
  description = "Moduł Terraform do automatycznego zakładania grup w GitLab wraz z etykietami, badge'ami oraz zmiennymi grupowymi."
  visibility  = "public"
  tags        = ["terraform", "terraform-modules"]
  icon_type   = "gitlab"

  parent_group = local.parent_name
  project_type = local.project_type

  # sonarqube
  sonarqube_cloud_project_id = "pl.rachuna-net_gitlab-group"
  is_enabled_sonarqube       = true

  mirror_url = format(
    "https://%s:%s@github.com/%s/%s.git",
    data.vault_kv_secret_v2.github.data["owner"],
    data.vault_kv_secret_v2.github.data["token"],
    data.vault_kv_secret_v2.github.data["owner"],
    "pl.rachuna-net.infrastructure.terraform.modules.gitlab-group"
  )
}