variable "gitlab_url" {
  type        = string
  default     = "https://gitlab.com"
  description = "Gitlab Url"
}

variable "vault_address" {
  type        = string
  default     = "https://vault.rachuna-net.pl"
  description = "Vault Address"
}

variable "vault_token" {
  type        = string
  description = "Vault Token"
}