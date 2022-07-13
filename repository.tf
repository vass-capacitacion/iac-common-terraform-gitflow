resource "github_repository" "template" {
  name        = "iac-common-terraform-template"
  description = "repositorio plantilla"

  visibility  = "private"
  is_template = true

}

resource "github_repository" "repository" {
  name        = "iac-common-terraform-gitflow"
  description = "repositorio gitflow"

  visibility = "public"
  template {
    owner      = "vass-capacitacion"
    repository = github_repository.template.name
  }

}









