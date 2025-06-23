module "_roles" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-group.git?ref=v1.1.0"

  name         = "roles"
  description  = "Repozytoria Ansible Roles do zarządzania automatyzacją zadań przy użyciu Ansible."
  parent_group = local.parent_name
  visibility   = "public"
  icon_type    = "ansible"
  
}

module "roles" {
  source = "./roles/"
}