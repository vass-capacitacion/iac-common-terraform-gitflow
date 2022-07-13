resource "github_team" "devops_team" {
  name        = "devops-team"
  description = "mi primer equipo por terra"
  privacy     = "secret"
}

resource "github_team_members" "some_team_members" {
  team_id = github_team.devops_team.id

  members {
    username = "davila97"
    role     = "member"
  }

}

resource "github_team_repository" "some_team_repo" {
  team_id    = github_team.devops_team.id
  repository = github_repository.repository.name
  permission = "push"
}
