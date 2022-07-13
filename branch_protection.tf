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

resource "github_branch_protection" "protection_develop" {
  repository_id = github_repository.repository.node_id

  pattern          = github_branch.development.branch
  enforce_admins   = true
  allows_deletions = true


  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    required_approving_review_count = 1
  }
}

resource "github_branch_protection" "protection_release" {
  repository_id = github_repository.repository.node_id

  pattern          = github_branch.release.branch
  enforce_admins   = true
  allows_deletions = true


  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    required_approving_review_count = 1
  }
}
