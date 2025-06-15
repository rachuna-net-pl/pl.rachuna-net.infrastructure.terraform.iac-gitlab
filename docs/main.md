## Zawartość

- Moduły Terraform do zarządzania grupami, projektami i uprawnieniami w GitLab
- Przykładowe konfiguracje wdrożeniowe
- Dokumentacja wdrożeniowa i konfiguracyjna

## Wymagania

- [Terraform](https://www.terraform.io/) w wersji zgodnej z modułami
- Dostęp do instancji GitLab oraz token z odpowiednimi uprawnieniami

## Szybki start

1. Sklonuj repozytorium:
   ```bash
   git clone https://gitlab.com/pl.rachuna-net/infrastructure/terraform/iac-gitlab.git
   cd iac-gitlab
   ```

2. Skonfiguruj zmienne środowiskowe i pliki `*.tfvars` zgodnie z dokumentacją.

3. Zainicjuj Terraform:
   ```bash
   terraform init
   ```

4. Zastosuj konfigurację:
   ```bash
   terraform apply
   ```

## Struktura katalogów

- `modules/` – moduły Terraform do ponownego użycia
- `pl.rachuna-net/` – konfiguracje dla poszczególnych grup/projektów
- `docs/` – dokumentacja techniczna
```bash
podman run -it -v $PWD:/terraform -v ~/.ssh:/root/.ssh -u root registry.gitlab.com/pl.rachuna-net/containers/terraform:1.0.0 bash
```

## Definicja grupy w gitlab

Przykładowa definicja grupy pl.rachuna-net
```hcl
module "group_pl_rachuna-net" {
    source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-group.git?ref=main"

    name           = "pl.rachuna-net"
    description    = "https://rachuna-net.pl"
    parent_group   = "" # Brak grupy nadrzędnej
    visibility     = "public"
    default_branch = "main"
    labels         = local.labels
    icon_type      = "root"

    badges = {
        "release" = {
            link_url    = "https://gitlab.com/%%{project_path}/-/releases"
            image_url   = "https://gitlab.com/%%{project_path}/-/badges/release.svg"
        }
        "pipeline" = {
            link_url    = "https://gitlab.com/%%{project_path}/-/commits/%%{default_branch}"
            image_url   = "https://gitlab.com/%%{project_path}/badges/%%{default_branch}/pipeline.svg"
        }
    }

    variables = {
        "SONAR_HOST_URL" = {
            description = "URL to SonarQube instance"
            value = "https://sonarcloud.io"
        }
        "SONAR_ORGANIZATION" = {
            description = "SonarQube organization"
            value = "pl-rachuna-net"
        }
    }
}
```

## Definicja projektu w gitlab

Przykładowa definicja projektu w gitlab
```hcl
module "gitlab" {
    source                             = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-project.git?ref=main"

    name                               = "gitlab"
    description                        = "IaaC - Gitlab Management by terraform"
    visibility                         = "public"
    tags                               = ["terraform", "terraform-modules"]
    icon_type                          = "gitlab"

    parent_group                       = local.parent_name
    project_type                       = local.project_type

    # sonarqube
    sonarqube_cloud_project_id         = 67040690
    is_enabled_sonarqube               = true
}
```
## Links
- [gitlabhq/gitlab](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs)
- [gitlab api - projects](https://docs.gitlab.com/ee/api/projects.html#create-a-project)

