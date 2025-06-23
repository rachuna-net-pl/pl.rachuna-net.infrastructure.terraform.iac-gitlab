module "_ansible" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-group.git?ref=v1.1.0"

  name         = "ansible"
  description  = "Repozytoria i moduły do zarządzania konfiguracją i automatyzacją zadań przy użyciu Ansible."
  parent_group = local.parent_name
  visibility   = "public"
  icon_type    = "ansible"
}

module "ansible" {
  source = "./ansible/"
}