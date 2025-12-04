locals {
  bucket_name = "django-movie-ecs-ecr-terraform-1"
  table_name  = "django-movie-ecs-ecr-terraform-1"

  ecr_repo_name = "django-movie-app-ecr-repo"

  movie_app_cluster_name        = "django-movie-app-cluster"
  availability_zones           = ["us-east-1a", "us-east-1b", "us-east-1c"]
  movie_app_task_famliy         = "django-movie-app-task"
  container_port               = 8000
  movie_app_task_name           = "django-movie-app-task"
  ecs_task_execution_role_name = "django-movie-app-task-execution-role"

  application_load_balancer_name = "django-movie-app-alb"
  target_group_name              = "django-movie-alb-tg"

  movie_app_service_name = "django-movie-app-service"

  cluster_log_group = "django-movie-app-cluster-group"
}