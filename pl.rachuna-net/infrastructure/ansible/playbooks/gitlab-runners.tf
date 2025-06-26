module "gitlab-runners" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-project.git?ref=v1.3.0"

  name        = "gitlab-runners"
  description = "Playbook Ansible do automatyzacji instalacji i konfiguracji GitLab Runnerów."
  visibility  = "public"
  tags        = ["inventory", "ansible"]
  icon_type   = "gitlab"

  parent_group = local.parent_name
  project_type = "ansible-playbook"

  # sonarqube
  is_enabled_sonarqube = false

  mirror_url = format(
    "https://%s:%s@github.com/%s/%s.git",
    data.vault_kv_secret_v2.github.data["owner"],
    data.vault_kv_secret_v2.github.data["token"],
    data.vault_kv_secret_v2.github.data["owner"],
    "pl.rachuna-net.infrastructure.ansible.playbooks.gitlab-runners"
  )
}