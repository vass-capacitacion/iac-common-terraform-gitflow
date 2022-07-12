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


resource "github_branch_protection" "protection" {
  repository_id = github_repository.repository.node_id

  pattern          = "main"
  enforce_admins   = true
  allows_deletions = true


  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    required_approving_review_count = 1
  }
}



