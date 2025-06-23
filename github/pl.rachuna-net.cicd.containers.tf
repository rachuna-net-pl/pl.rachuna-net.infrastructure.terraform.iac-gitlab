resource "github_repository" "pl-rachuna-net-containers-gitlab-profile" {
  name        = "pl.rachuna-net.containers.gitlab-profile"
  description = ""
  visibility  = "public"
}

resource "github_repository" "pl-rachuna-net-containers-ansible" {
  name        = "pl.rachuna-net.containers.ansible"
  description = "Obraz Dockerowy z Ansible i Molecule."
  visibility  = "public"
}

resource "github_repository" "pl-rachuna-net-containers-mkdocs" {
  name        = "pl.rachuna-net.containers.mkdocs"
  description = "Obraz Dockerowy z MkDocs."
  visibility  = "public"
}

resource "github_repository" "pl-rachuna-net-containers-packer" {
  name        = "pl.rachuna-net.containers.packer"
  description = "Obraz Dockerowy z Packer."
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