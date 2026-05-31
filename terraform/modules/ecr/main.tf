resource "aws_ecr_repository" "repo" {

  name = "linux-monitoring-system"

  image_scanning_configuration {
    scan_on_push = true
  }
}
