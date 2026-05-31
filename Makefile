# ==========================
# Linux Monitoring System
# Makefile
# ==========================

IMAGE_NAME=linux-monitor
IMAGE_TAG=latest

AWS_REGION=ap-south-1
ECR_REPO=linux-monitor

# --------------------------
# Local Development
# --------------------------

up:
	docker-compose -f deploy/docker-compose.yml up -d

down:
	docker-compose -f deploy/docker-compose.yml down

restart:
	docker-compose -f deploy/docker-compose.yml down
	docker-compose -f deploy/docker-compose.yml up -d

logs:
	tail -f logs/monitor.log

clean:
	rm -rf logs/*.log

# --------------------------
# Testing
# --------------------------

test:
	bash tests/smoke-test.sh

integration-test:
	bash tests/integration-test.sh

recovery-test:
	bash tests/recovery-test.sh

health-check:
	bash scripts/health-check.sh

# --------------------------
# Docker
# --------------------------

build:
	docker build -t $(IMAGE_NAME):$(IMAGE_TAG) -f docker/Dockerfile .

docker-run:
	docker run -d --name linux-monitor \
	-p 8080:8080 \
	$(IMAGE_NAME):$(IMAGE_TAG)

docker-stop:
	docker stop linux-monitor || true
	docker rm linux-monitor || true

# --------------------------
# AWS ECR
# --------------------------

ecr-login:
	aws ecr get-login-password --region $(AWS_REGION) | \
	docker login --username AWS --password-stdin \
	$$(aws sts get-caller-identity --query Account --output text).dkr.ecr.$(AWS_REGION).amazonaws.com

ecr-push:
	docker tag $(IMAGE_NAME):$(IMAGE_TAG) \
	$$(aws sts get-caller-identity --query Account --output text).dkr.ecr.$(AWS_REGION).amazonaws.com/$(ECR_REPO):$(IMAGE_TAG)

	docker push \
	$$(aws sts get-caller-identity --query Account --output text).dkr.ecr.$(AWS_REGION).amazonaws.com/$(ECR_REPO):$(IMAGE_TAG)

# --------------------------
# Terraform
# --------------------------

tf-init:
	cd terraform/environments/dev && terraform init

tf-validate:
	cd terraform/environments/dev && terraform validate

tf-plan:
	cd terraform/environments/dev && terraform plan

tf-apply:
	cd terraform/environments/dev && terraform apply -auto-approve

tf-destroy:
	cd terraform/environments/dev && terraform destroy -auto-approve

# --------------------------
# Kubernetes
# --------------------------

k8s-deploy:
	kubectl apply -f k8s/

k8s-delete:
	kubectl delete -f k8s/

k8s-status:
	kubectl get all -n linux-monitor

k8s-logs:
	kubectl logs deployment/linux-monitor -n linux-monitor

# --------------------------
# Monitoring
# --------------------------

prometheus:
	kubectl get svc -n monitoring

grafana:
	kubectl get svc -n monitoring

# --------------------------
# Full CI/CD Flow
# --------------------------

deploy:
	make test
	make build
	make ecr-login
	make ecr-push
	make k8s-deploy

full-stack:
	make tf-apply
	make deploy 
