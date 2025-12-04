resource "aws_cloudwatch_log_group" "ecs_log_group" {
  name              = var.django_movie_cluster_log_group
  retention_in_days = 30 
}


variable "django_movie_cluster_log_group" {
  description = "django movie cluster log group"
  type        = string
}

output "log_group_name" {
  value = aws_cloudwatch_log_group.ecs_log_group.name
}

output "log_group_name_prefix" {
  value = aws_cloudwatch_log_group.ecs_log_group.name_prefix
}
