resource "aws_instance" "monitor" {

  ami           = "ami-0f58b397bc5c1f2e8"
  instance_type = "t3.micro"

  subnet_id = var.subnet_id

  vpc_security_group_ids = [
    var.security_group_id
  ]

  iam_instance_profile = var.iam_profile

  user_data = <<EOF
#!/bin/bash

apt update -y
apt install docker.io -y

systemctl enable docker
systemctl start docker

usermod -aG docker ubuntu

docker run -d \
-p 9090:9090 \
--name prometheus \
prom/prometheus

docker run -d \
-p 3000:3000 \
--name grafana \
grafana/grafana
EOF

  tags = {
    Name = "${var.project_name}-server"
  }

}
