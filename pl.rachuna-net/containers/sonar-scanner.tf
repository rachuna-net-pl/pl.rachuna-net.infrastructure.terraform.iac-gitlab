module "sonar-scanner" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-project.git?ref=feat/101"

  name        = "sonar-scanner"
  description = "Obraz Dockerowy z narzędziem Sonar Scanner do analizy kodu źródłowego."
  visibility  = "public"
  tags        = ["docker", "sonar-scanner"]
  icon_type   = "sonarqube"

  parent_group = local.parent_name
  project_type = local.project_type

  # sonarqube
  sonarqube_cloud_project_id = "pl.rachuna-net_sonar-scanner"
  is_enabled_sonarqube       = true
}