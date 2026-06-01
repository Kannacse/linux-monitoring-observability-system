# Linux Monitoring & Observability System

## Overview

Linux Monitoring & Observability System is an end-to-end DevOps project designed to automate Linux system monitoring, deployment, observability, alerting, and self-healing using modern cloud-native tools and AWS services.

The project demonstrates practical implementation of:

* Linux Administration
* Shell Scripting
* Docker Containerization
* Terraform Infrastructure as Code
* AWS Cloud Services
* Jenkins CI/CD
* Amazon ECR
* Kubernetes (Minikube)
* Prometheus Monitoring
* Grafana Dashboards
* Alerting & Self-Healing

---

## Architecture

```text
Developer (Garuda Linux)
        │
        ▼
     GitHub
        │
        ▼
   Jenkins CI/CD
        │
        ▼
   Docker Build
        │
        ▼
   Amazon ECR
        │
        ▼
AWS Systems Manager (SSM)
        │
        ▼
     AWS EC2
        │
 ┌──────┼─────────────┐
 │      │             │
 ▼      ▼             ▼
Application   Prometheus   Grafana
Container     Monitoring   Dashboard
 │
 ▼
Node Exporter
 │
 ▼
Alert Rules
 │
 ▼
Self-Healing
```

---

## Key Features

### Linux Monitoring

Monitors critical Linux resources:

* CPU Utilization
* Memory Usage
* Disk Usage
* System Health
* Service Availability

### Health Analysis

* Threshold-based monitoring
* Resource utilization analysis
* Service status validation

### Auto-Healing

* Automatic container recovery
* Service restart automation
* Health-check based recovery actions

### Containerization

* Dockerized monitoring platform
* Portable deployment architecture
* Container lifecycle management

### CI/CD Automation

Jenkins pipeline performs:

* Source Code Checkout
* Docker Image Build
* Amazon ECR Authentication
* Image Push to Amazon ECR
* AWS SSM Deployment
* Automated EC2 Container Update

### Observability

#### Prometheus

* Metrics Collection
* Node Exporter Integration
* Alert Rule Evaluation

#### Grafana

Dashboards for:

* CPU Metrics
* Memory Metrics
* Disk Metrics
* System Performance

### Kubernetes Validation

Application deployment validated using:

* Minikube
* Deployment Objects
* Services
* ReplicaSets
* Namespace Configuration

---

## Technology Stack

| Category                | Technology                 |
| ----------------------- | -------------------------- |
| Operating System        | Garuda Linux, Ubuntu 24.04 |
| Scripting               | Bash                       |
| Cloud Platform          | AWS                        |
| Infrastructure as Code  | Terraform                  |
| Containerization        | Docker                     |
| Container Registry      | Amazon ECR                 |
| CI/CD                   | Jenkins                    |
| Deployment              | AWS Systems Manager (SSM)  |
| Container Orchestration | Kubernetes (Minikube)      |
| Monitoring              | Prometheus                 |
| Visualization           | Grafana                    |
| Metrics Exporter        | Node Exporter              |
| Version Control         | Git, GitHub                |

---

## AWS Services Used

* Amazon EC2
* Amazon ECR
* IAM
* Security Groups
* AWS Systems Manager (SSM)

Infrastructure provisioning performed using Terraform modules.

---

## Project Structure

```text
linux-monitoring-observability-system/
│
├── analyzer/
├── config/
├── controller/
├── docker/
├── healer/
├── jenkins/
│   └── Jenkinsfile
├── k8s/
│   ├── deployment.yaml
│   ├── service.yaml
│   ├── configmap.yaml
│   ├── hpa.yaml
│   ├── prometheus.yaml
│   ├── grafana.yaml
│   └── namespace.yaml
│
├── metrics/
├── monitor/
├── observability/
├── scheduler/
├── scripts/
├── terraform/
│   ├── modules/
│   └── environments/
│
├── utils/
├── screenshots/
├── start-project.sh
└── README.md
```

---

## CI/CD Workflow

```text
GitHub
   │
   ▼
Jenkins
   │
   ▼
Docker Build
   │
   ▼
Amazon ECR
   │
   ▼
AWS SSM
   │
   ▼
AWS EC2
   │
   ▼
Container Deployment
```

---

## Monitoring Stack

### Prometheus

Configured to collect metrics from:

* Prometheus Server
* Node Exporter

### Grafana

Integrated with Prometheus datasource and configured dashboards for:

* CPU Usage
* Memory Usage
* Disk Usage
* Host Performance

### Alert Rules

Implemented:

#### NodeExporterDown

Triggers when Node Exporter becomes unavailable.

#### HighCPUUsage

Triggers when CPU utilization exceeds the configured threshold.

---

## Self-Healing Mechanism

A health-check script continuously monitors the application container.

When a failure is detected:

1. Container health is verified.
2. Failed container is removed.
3. Latest container is restarted automatically.
4. Service availability is restored.

---

## Kubernetes Deployment Validation

Validated application deployment using Kubernetes (Minikube).

Resources created:

* Deployment
* Service
* ReplicaSet
* Pod

Verification performed using:

```bash
kubectl get all
```

---

## Project Achievements

✅ Terraform Infrastructure Provisioning

✅ Dockerized Application

✅ Amazon ECR Integration

✅ Jenkins CI/CD Pipeline

✅ AWS SSM Automated Deployment

✅ Prometheus Monitoring

✅ Grafana Dashboards

✅ Kubernetes Deployment Validation

✅ Alert Rule Configuration

✅ Self-Healing Automation

---

## Screenshots

### Jenkins Pipeline Success

(Add Screenshot)

### Kubernetes Deployment

(Add Screenshot)

### Prometheus Targets

(Add Screenshot)

### Grafana Dashboard

(Add Screenshot)

### Alert Rules

(Add Screenshot)

### Self-Healing Demonstration

(Add Screenshot)

---

## Future Enhancements

* Alertmanager Integration
* Email Notifications
* Slack Notifications
* AWS EKS Deployment
* Helm Charts
* ArgoCD GitOps
* SonarQube Integration
* Trivy Security Scanning

---

## Author

### Kannan T

Aspiring DevOps Engineer | Cloud Engineer | Linux Enthusiast

GitHub: https://github.com/Kannacse

Project Repository:
https://github.com/Kannacse/linux-monitoring-observability-system
