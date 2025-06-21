### pl.rachuna-net.cicd.containers
resource "github_repository" "pl-rachuna-net-containers-mkdocs" {
  name        = "pl.rachuna-net.containers.mkdocs"
  description = "Obraz Dockerowy z MkDocs."
  visibility  = "public"
}

resource "github_repository" "pl-rachuna-net-containers-python" {
  name        = "pl.rachuna-net.containers.python"
  description = "Obraz Dockerowy z Python."
  visibility  = "public"
}

resource "github_repository" "pl-rachuna-net-containers-semantic-release" {
  name        = "pl.rachuna-net.containers.semantic-release"
  description = "Obraz Dockerowy z narzędziem Semantic-Release."
  visibility  = "public"
}

resource "github_repository" "pl-rachuna-net-containers-sonar-scanner" {
  name        = "pl.rachuna-net.containers.sonar-scanner"
  description = "Obraz Dockerowy z narzędziem Sonar Scanner do analizy kodu źródłowego."
  visibility  = "public"
}

resource "github_repository" "pl-rachuna-net-containers-terraform" {
  name        = "pl.rachuna-net.containers.terraform"
  description = "Obraz Dockerowy z narzędziem Terraform."
  visibility  = "public"
}

resource "github_repository" "pl-rachuna-net-containers-vault" {
  name        = "pl.rachuna-net.containers.vault"
  description = "Obraz Dockerowy z narzędziem Vault."
  visibility  = "public"
}

###
resource "github_repository" "pl-rachuna-net-infrastructure-terraform-iac-gitlab" {
  name        = "pl.rachuna-net.infrastructure.terraform.iac-gitlab"
  description = "Repozytorium zawierające infrastrukturę jako kod (IaC) do zarządzania środowiskiem GitLab przy użyciu Terraform. Umożliwia automatyzację tworzenia, konfiguracji i utrzymania zasobów GitLab."
  visibility  = "public"
}

resource "github_repository" "pl-rachuna-net-infrastructure-terraform-iac-vault" {
  name        = "pl.rachuna-net.infrastructure.terraform.iac-vault"
  description = "Repozytorium zawierające infrastrukturę jako kod (IaC) do zarządzania środowiskiem Vault przy użyciu Terraform. Umożliwia automatyzację tworzenia, konfiguracji i utrzymania zasobów Vault."
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