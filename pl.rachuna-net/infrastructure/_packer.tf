module "_packer" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-group.git?ref=v1.1.0"

  name         = "packer"
  description  = "Szablony Packer do tworzenia maszyn wirtualnych w Proxmox."
  parent_group = local.parent_name
  visibility   = "public"
  icon_type    = "packer"
}

# module "packer" {
#   source = "./packer/"
# }