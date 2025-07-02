module "deploy-gitlab-runner" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-project.git?ref=v1.3.0"

  name        = "deploy-gitlab-runner"
  description = "Ansible Role do automatyzacji instalacji i konfiguracji GitLab Runnerów."
  visibility  = "public"
  tags        = ["inventory", "ansible"]
  icon_type   = "gitlab"

  parent_group = local.parent_name
  project_type = "ansible-role"

  # sonarqube
  is_enabled_sonarqube = false

  mirror_url = format(
    "https://%s:%s@github.com/%s/%s.git",
    data.vault_kv_secret_v2.github.data["owner"],
    data.vault_kv_secret_v2.github.data["token"],
    data.vault_kv_secret_v2.github.data["owner"],
    "pl.rachuna-net.infrastructure.ansible.roles.deploy-gitlab-runner"
  )

  variables = {
    GITLAB_RUNNER_ID = {
      description = "ID GitLab Runnera, który ma być zainstalowany."
      masked      = true
      value       = data.vault_kv_secret_v2.pl_rachuna-net_infrastructure_ansible_roles_deploy-gitlab-runner.data["GITLAB_RUNNER_ID"]
    }
    GITLAB_GROUP_REPOSITORY_ID = {
      description = "ID grupy GitLab, do której należy dodać Runnera."
      masked      = true
      value       = data.vault_kv_secret_v2.pl_rachuna-net_infrastructure_ansible_roles_deploy-gitlab-runner.data["GITLAB_GROUP_REPOSITORY_ID"]
    }
    GITLAB_RUNNER_TOKEN = {
      description = "Token GitLab Runnera, który jest wymagany do rejestracji."
      masked      = true
      value       = data.vault_kv_secret_v2.pl_rachuna-net_infrastructure_ansible_roles_deploy-gitlab-runner.data["GITLAB_RUNNER_TOKEN"]
    }
  }
}