terraform {
  backend "remote" {
    hostname="app.terraform.io"
    token = ""
    organization = "Movies_Yiling_Devops_Pro"
    workspaces {
      name = "top_picks_movies"
    }
  }
}