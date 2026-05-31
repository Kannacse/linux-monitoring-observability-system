module "monitoring_stack" {
source = "../../"

aws_region  = var.aws_region
environment = var.environment
}

