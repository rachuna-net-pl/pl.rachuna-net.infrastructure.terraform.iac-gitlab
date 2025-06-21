resource "github_repository" "pl-rachuna-net-docs" {
  name        = "pl.rachuna-net.docs"
  description = "Dokumentacja projektu pl.rachuna-net"
  visibility  = "public"
}

resource "github_repository" "pl-rachuna-net-gitlab-profile" {
  name        = "pl.rachuna-net.gitlab-profile"
  description = ""
  visibility  = "public"
}