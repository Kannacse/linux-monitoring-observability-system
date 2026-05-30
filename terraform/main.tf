module "networking" {
  source = "./modules/networking"

  project_name = var.project_name
}

module "security" {
  source = "./modules/security"

  project_name = var.project_name
  vpc_id       = module.networking.vpc_id
}

module "iam" {
  source = "./modules/iam"

  project_name = var.project_name
}

module "storage" {
  source = "./modules/storage"

  project_name = var.project_name
}

module "ecr" {
  source = "./modules/ecr"

  project_name = var.project_name
}

module "monitoring" {
  source = "./modules/monitoring"

  project_name = var.project_name
}

module "ec2" {
  source = "./modules/ec2"

  project_name      = var.project_name
  subnet_id         = module.networking.public_subnet_id
  security_group_id = module.security.monitoring_sg
  iam_profile       = module.iam.instance_profile
}
