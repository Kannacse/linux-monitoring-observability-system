resource "aws_s3_bucket" "backup" {

  bucket = "linux-monitoring-backup-${random_id.rand.hex}"
}

resource "random_id" "rand" {
  byte_length = 4
}
