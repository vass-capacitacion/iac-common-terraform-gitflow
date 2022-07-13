resource "github_branch" "development" {
  repository = github_repository.repository.name
  branch     = "develop"
}

resource "github_branch" "release" {
  repository = github_repository.repository.name
  branch     = "release"
}



