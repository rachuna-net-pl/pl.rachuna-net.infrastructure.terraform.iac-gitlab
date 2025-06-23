module "_playbooks" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-group.git?ref=v1.1.0"

  name         = "playbooks"
  description  = "Repozytoria automatyzacji zadań przy użyciu Ansible Playbooks."
  parent_group = local.parent_name
  visibility   = "public"
  icon_type    = "ansible"

}

module "playbooks" {
  source = "./playbooks/"
}