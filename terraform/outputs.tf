output "monitoring_server_ip" {
  value = module.ec2.public_ip
}

output "ecr_repository" {
  value = module.ecr.repository_url
}

output "backup_bucket" {
  value = module.storage.bucket_name
}
