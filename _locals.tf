locals {
  labels = {
    "tech::ansible" = {
      description = "Ansible related issues"
      color       = "#DC143C"
    }
    "tech::containers" = {
      description = "Containers related issues"
      color       = "#0055FF"
    }
    "tech::gitlab-ci" = {
      description = "Gitlab CI related issues"
      color       = "#ED9121"
    }
    "tech::packer" = {
      description = "Packer related issues"
      color       = "#85c2ff"
    }
    "tech::terraform" = {
      description = "Terraform related issues"
      color       = "#9400D3"
    }
    "critical" = {
      description = "Critical issues"
      color       = "#FF0000"
    }
    "parametrized" = {
      description = "Parametrized issues"
      color       = "#36454F"
    }
    "documentation" = {
      description = "Documentation issues"
      color       = "#6699CC"
    }
  }
}