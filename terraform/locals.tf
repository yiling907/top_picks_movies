locals {
  bucket_name = "django-music-ecs-ecr-terraform-1"
  table_name  = "django-music-ecs-ecr-terraform-1"

  ecr_repo_name = "django-music-app-ecr-repo"

  music_app_cluster_name        = "django-music-app-cluster"
  availability_zones           = ["us-east-1a", "us-east-1b", "us-east-1c"]
  music_app_task_famliy         = "django-music-app-task"
  container_port               = 8000
  music_app_task_name           = "django-music-app-task"
  ecs_task_execution_role_name = "django-music-app-task-execution-role"

  application_load_balancer_name = "django-music-app-alb"
  target_group_name              = "django-music-alb-tg"

  music_app_service_name = "django-music-app-service"
}