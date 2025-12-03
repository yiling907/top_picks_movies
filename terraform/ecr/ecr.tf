resource "aws_ecr_repository" "movie_app_ecr_repo" {
  name = var.ecr_repo_name
}

variable "ecr_repo_name" {
  description = "ECR Repository Name"
  type        = string
}

output "repository_url" {
  value = aws_ecr_repository.movie_app_ecr_repo.repository_url
}

output "repository_url_e" {
  value = aws_ecr_repository.movie_app_ecr_repo
}