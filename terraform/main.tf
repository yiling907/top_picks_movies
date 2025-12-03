terraform {
  required_version = "~> 1.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}


module "ecrRepo" {
  source = "./ecr"

  ecr_repo_name = local.ecr_repo_name
}

module "ecsCluster" {
  source = "./ecs"

  music_app_cluster_name = local.music_app_cluster_name
  availability_zones    = local.availability_zones

  music_app_task_famliy         = local.music_app_task_famliy
  ecr_repo_url                 = module.ecrRepo.repository_url
  container_port               = local.container_port
  music_app_task_name           = local.music_app_task_name
  ecs_task_execution_role_name = local.ecs_task_execution_role_name

  application_load_balancer_name = local.application_load_balancer_name
  target_group_name              = local.target_group_name
  music_app_service_name          = local.music_app_service_name
}