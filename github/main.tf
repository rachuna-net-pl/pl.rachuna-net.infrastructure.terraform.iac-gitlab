### pl.rachuna-net.cicd.gitlab-ci
resource "github_repository" "pl-rachuna-net-cicd-gitlab-ci" {
  name        = "pl.rachuna-net.cicd.gitlab-ci"
  description = "Procesy do ciągłej integracji i dostarczania (CI/CD) dla projektów w grupie pl.rachuna-net."
  visibility  = "public"
}

resource "github_repository" "pl-rachuna-net-cicd-gitlab-profile" {
  name        = "pl.rachuna-net.cicd.gitlab-profile"
  description = ""
  visibility  = "public"
}

### pl.rachuna-net.cicd.components
resource "github_repository" "pl-rachuna-net-cicd-components-build" {
  name        = "pl.rachuna-net.cicd.components.build"
  description = "Komponent do automatycznej budowy aplikacji i bibliotek w procesach CI/CD."
  visibility  = "public"
}

resource "github_repository" "pl-rachuna-net-cicd-components-deploy" {
  name        = "pl.rachuna-net.cicd.components.deploy"
  description = "Komponent do wdrożeń bibliotek i aplikacj na środowiska"
  visibility  = "public"
}

resource "github_repository" "pl-rachuna-net-cicd-components-integration-test" {
  name        = "pl.rachuna-net.cicd.components.integration-test"
  description = "Komponent do automatycznego uruchamiania testów integracyjnych w procesach CI/CD."
  visibility  = "public"
}

resource "github_repository" "pl-rachuna-net-cicd-components-publish" {
  name        = "pl.rachuna-net.cicd.components.publish"
  description = "Komponent do publikacji wersji aplikacji i bibliotek w procesach CI/CD."
  visibility  = "public"
}

resource "github_repository" "pl-rachuna-net-cicd-components-release" {
  name        = "pl.rachuna-net.cicd.components.release"
  description = "Komponent do zarządzania wersjami i publikacji bibliotek i aplikacji na środowiska produkcyjne"
  visibility  = "public"
}

resource "github_repository" "pl-rachuna-net-cicd-components-sast" {
  name        = "pl.rachuna-net.cicd.components.sast"
  description = "Komponent do analizy statycznej kodu źródłowego (SAST)."
  visibility  = "public"
}

resource "github_repository" "pl-rachuna-net-cicd-components-unit-test" {
  name        = "pl.rachuna-net.cicd.components.unit-test"
  description = "Komponent do automatycznego uruchamiania testów jednostkowych w procesach CI/CD."
  visibility  = "public"
}

resource "github_repository" "pl-rachuna-net-cicd-components-validate" {
  name        = "pl.rachuna-net.cicd.components.validate"
  description = "Komponent do automatycznej walidacji jakości i poprawności kodu w procesach CI/CD."
  visibility  = "public"
}

### pl.rachuna-net.cicd.containers
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