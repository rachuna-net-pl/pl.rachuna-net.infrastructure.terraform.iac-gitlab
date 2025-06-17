resource "github_repository" "pl-rachuna-net-cicd-components-versioning" {
  name        = "pl.rachuna-net.cicd.components.versioning"
  description = "Komponent wspierający automatyczne wersjonowanie kodu oraz procesów CI/CD w projektach GitLab."
  visibility  = "public"
}

resource "github_repository" "pl-rachuna-net-containers-semantic-release" {
  name        = "pl.rachuna-net.containers.semantic-release"
  description = "Obraz Dockerowy z narzędziem Semantic-Release."
  visibility  = "public"
}

resource "github_repository" "pl-rachuna-net-containers-terraform" {
  name        = "pl.rachuna-net.containers.terraform"
  description = "Obraz Dockerowy z narzędziem Terraform."
  visibility  = "public"
}

resource "github_repository" "pl-rachuna-net-infrastructure-terraform-iac-gitlab" {
  name        = "pl.rachuna-net.infrastructure.terraform.iac-gitlab"
  description = "Repozytorium zawierające infrastrukturę jako kod (IaC) do zarządzania środowiskiem GitLab przy użyciu Terraform. Umożliwia automatyzację tworzenia, konfiguracji i utrzymania zasobów GitLab."
  visibility  = "public"
}

resource "github_repository" "pl-rachuna-net-infrastructure-terraform-modules-gitlab-group" {
  name        = "pl.rachuna-net.infrastructure.terraform.modules.gitlab-group"
  description = "Moduł Terraform do automatycznego zakładania grup w GitLab wraz z etykietami, badge'ami oraz zmiennymi grupowymi."
  visibility  = "public"
}

resource "github_repository" "pl-rachuna-net-infrastructure-terraform-modules-gitlab-project" {
  name        = "pl.rachuna-net.infrastructure.terraform.modules.gitlab-project"
  description = "Moduł służy do automatycznego zakładania projektów w GitLab z wykorzystaniem standaryzacji, ochrony branchy, tagów, zmiennych CI oraz integracji z SonarQube."
  visibility  = "public"
}