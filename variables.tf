variable "gitlab_token" {
  type        = string
  description = "Gitlab Token"
}

variable "gitlab_url" {
  type        = string
  default     = "https://gitlab.com/api/v4/"
  description = "Gitlab Url"
}

variable "github_token" {
  type        = string
  description = "GitHub Token"
}

variable "github_owner" {
  type        = string
  description = "GitHub Owner (username or organization)"
}