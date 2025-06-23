resource "github_repository" "pl-rachuna-net-infrastructure-terraform-gitlab-profile" {
  name        = "pl.rachuna-net.infrastructure.terraform.gitlab-profile"
  description = ""
  visibility  = "public"
}

resource "github_repository" "pl-rachuna-net-infrastructure-terraform-iac-gitlab" {
  name        = "pl.rachuna-net.infrastructure.terraform.iac-gitlab"
  description = "Repozytorium zawierające infrastrukturę jako kod (IaC) do zarządzania środowiskiem GitLab przy użyciu Terraform. Umożliwia automatyzację tworzenia, konfiguracji i utrzymania zasobów GitLab."
  visibility  = "public"
}

resource "github_repository" "pl-rachuna-net-infrastructure-terraform-iac-proxmox" {
  name        = "pl.rachuna-net.infrastructure.terraform.iac-proxmox"
  description = "Repozytorium zawierające infrastrukturę jako kod (IaC) do zarządzania środowiskiem Proxmox przy użyciu Terraform. Umożliwia automatyzację tworzenia, konfiguracji i utrzymania zasobów Proxmox."
  visibility  = "public"
}

resource "github_repository" "pl-rachuna-net-infrastructure-terraform-iac-vault" {
  name        = "pl.rachuna-net.infrastructure.terraform.iac-vault"
  description = "Repozytorium zawierające infrastrukturę jako kod (IaC) do zarządzania środowiskiem Vault przy użyciu Terraform. Umożliwia automatyzację tworzenia, konfiguracji i utrzymania zasobów Vault."
  visibility  = "public"
}

# modules
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

resource "github_repository" "pl-rachuna-net-infrastructure-terraform-modules-proxmox-container" {
  name        = "pl.rachuna-net.infrastructure.terraform.modules.proxmox-container"
  description = "Moduł Terraform umożliwia automatyczne tworzenie i zarządzanie kontenerami LXC (CT) w środowisku Proxmox VE."
  visibility  = "public"
}