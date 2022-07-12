terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "4.26.1"
    }
  }
  backend "s3" {
    bucket = "bucket-maikol"
    key    = "estados/estado-github-branch"
    region = "us-east-1"
  }

}

provider "github" {
  owner = "vass-capacitacion"
}
