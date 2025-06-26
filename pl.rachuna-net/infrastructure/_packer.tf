module "_packer" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-group.git?ref=v1.1.0"

  name         = "packer"
  description  = "Szablony Packer do tworzenia maszyn wirtualnych w Proxmox."
  parent_group = local.parent_name
  visibility   = "public"
  icon_type    = "packer"

  variables = {
    PKR_VAR_iso_storage_pool = {
      description = "Nazwa puli storage dla ISO w Proxmox"
      masked      = true
      value       = data.vault_kv_secret_v2.gitlab_pl_rachuna_net-infrastructure-packer.data["PKR_VAR_iso_storage_pool"]
    }
    PKR_VAR_proxmox_api_password = {
      description = "Hasło do API Proxmox"
      masked      = true
      value       = data.vault_kv_secret_v2.gitlab_pl_rachuna_net-infrastructure-packer.data["PKR_VAR_proxmox_api_password"]
    }
    PKR_VAR_proxmox_api_tls_verify = {
      description = "Czy weryfikować certyfikat TLS Proxmox"
      value       = data.vault_kv_secret_v2.gitlab_pl_rachuna_net-infrastructure-packer.data["PKR_VAR_proxmox_api_tls_verify"]
    }
    PKR_VAR_proxmox_api_username = {
      description = "Nazwa użytkownika do API Proxmox"
      masked      = true
      value       = data.vault_kv_secret_v2.gitlab_pl_rachuna_net-infrastructure-packer.data["PKR_VAR_proxmox_api_username"]
    }
    PKR_VAR_proxmox_node_name = {
      description = "Nazwa węzła Proxmox"
      value       = data.vault_kv_secret_v2.gitlab_pl_rachuna_net-infrastructure-packer.data["PKR_VAR_proxmox_node_name"]
    }
    PKR_VAR_ssh_password = {
      description = "Hasło do SSH"
      masked      = true
      value       = data.vault_kv_secret_v2.gitlab_pl_rachuna_net-infrastructure-packer.data["PKR_VAR_ssh_password"]
    }
    PKR_VAR_ssh_username = {
      description = "Nazwa użytkownika SSH"
      value       = data.vault_kv_secret_v2.gitlab_pl_rachuna_net-infrastructure-packer.data["PKR_VAR_ssh_username"]
    }
    PKR_VAR_ssh_public_key = {
      description = "Publiczny klucz SSH"
      value       = data.vault_kv_secret_v2.gitlab_pl_rachuna_net.data["GITLAB_SSH_PUBKEY"]
    }
  }
}

module "packer" {
  source = "./packer/"
}