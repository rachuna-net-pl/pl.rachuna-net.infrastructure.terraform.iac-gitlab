terraform {
  required_providers {
    gitlab = {
      source = "gitlabhq/gitlab"
    }
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
  backend "http" {}
}

provider "gitlab" {
  token    = var.gitlab_token
  base_url = var.gitlab_url
}