### pl.rachuna-net.cicd
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

resource "github_repository" "pl-rachuna-net-cicd-components-prepare" {
  name        = "pl.rachuna-net.cicd.components.prepare"
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