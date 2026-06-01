# Linux Monitoring & Auto-Healing System

## Overview

Linux Monitoring & Auto-Healing System is a DevOps project designed to monitor Linux system health, analyze resource utilization, automatically perform corrective actions, and provide observability through Prometheus and Grafana.

The project demonstrates end-to-end DevOps practices including:

* Linux Administration
* Shell Scripting
* Docker Containerization
* AWS Cloud Infrastructure
* Terraform Infrastructure as Code
* Amazon ECR
* Kubernetes Deployment
* Jenkins CI/CD
* Prometheus Monitoring
* Grafana Visualization
* Auto-Healing Mechanisms

---

## Project Architecture

```text
+-----------------------+
| Linux Monitoring      |
| Scripts               |
+----------+------------+
           |
           v
+-----------------------+
| Health Analyzer       |
+----------+------------+
           |
           v
+-----------------------+
| Auto-Healing Engine   |
+----------+------------+
           |
           v
+-----------------------+
| Docker Container      |
+----------+------------+
           |
           v
+-----------------------+
| Amazon ECR            |
+----------+------------+
           |
           v
+-----------------------+
| Kubernetes            |
| (Minikube)            |
+----------+------------+
           |
           +----------------+
           |                |
           v                v
+----------------+   +----------------+
| Prometheus     |   | Grafana        |
+----------------+   +----------------+

           ^
           |
+-----------------------+
| Jenkins CI/CD         |
+-----------------------+
```

---

## Features

### Monitoring

Monitors:

* CPU Utilization
* Memory Utilization
* Disk Usage
* Critical Services

### Health Analysis

Evaluates system health using configurable thresholds.

### Auto-Healing

Supports:

* Service Restart
* Log Cleanup
* Resource Recovery Actions

### Containerization

* Dockerized monitoring platform
* Portable deployment architecture

### Kubernetes Deployment

* Kubernetes Deployment Manifest
* Replica Management
* Pod Self-Healing
* Rolling Updates

### Observability

Prometheus:

* Node Metrics Collection
* System Health Metrics

Grafana:

* CPU Dashboard
* Memory Dashboard
* Disk Dashboard
* Service Monitoring Dashboard

### CI/CD

Jenkins Pipeline:

* Source Code Checkout
* Docker Image Build
* Amazon ECR Push
* Kubernetes Deployment

---

## Project Structure

```text
linux-monitoring-system/

├── analyzer/
├── config/
├── controller/
├── docker/
│   ├── Dockerfile
│   └── entrypoint.sh
├── healer/
├── jenkins/
│   └── Jenkinsfile
├── k8s/
│   └── deployment.yaml
├── metrics/
├── monitor/
├── observability/
├── scheduler/
├── scripts/
├── terraform/
│   ├── backend.tf
│   ├── environments/
│   ├── modules/
│   └── providers.tf
├── utils/
└── start-project.sh
```

---

## Technologies Used

### Operating System

* Linux
* Garuda Linux

### Scripting

* Bash

### Containerization

* Docker

### Cloud

* AWS EC2
* Amazon ECR
* IAM

### Infrastructure as Code

* Terraform

### Kubernetes

* Minikube
* kubectl

### CI/CD

* Jenkins

### Monitoring

* Prometheus
* Node Exporter
* Grafana

### Version Control

* Git
* GitHub

---

## AWS Resources Used

* EC2
* ECR
* IAM
* Security Groups

Terraform modules created for:

* Networking
* Security
* Monitoring
* ECR
* IAM
* EC2

---

## Completed Milestones

### Phase 1 – Linux Monitoring

Completed:

* CPU Monitoring
* Memory Monitoring
* Disk Monitoring
* Service Monitoring

Status: ✅ Completed

---

### Phase 2 – Health Analysis

Completed:

* Threshold-Based Analysis
* Health Status Evaluation

Status: ✅ Completed

---

### Phase 3 – Auto-Healing

Completed:

* Service Restart Automation
* Log Cleanup Automation

Status: ✅ Completed

---

### Phase 4 – Dockerization

Completed:

* Dockerfile Creation
* Docker Image Build
* Container Execution

Status: ✅ Completed

---

### Phase 5 – AWS Integration

Completed:

* AWS CLI Configuration
* ECR Repository Creation
* Docker Image Push

Status: ✅ Completed

---

### Phase 6 – Prometheus

Completed:

* Prometheus Deployment
* Node Exporter Deployment
* Metrics Collection

Status: ✅ Completed

---

### Phase 7 – Grafana

Completed:

* Grafana Deployment
* Dashboard Configuration
* Prometheus Integration

Status: ✅ Completed

---

### Phase 8 – Kubernetes

Completed:

* Minikube Cluster Setup
* Deployment Manifest Creation
* Pod Deployment
* Pod Verification

Status: ✅ Completed

---

### Phase 9 – Jenkins CI/CD

Completed:

* Jenkins Installation
* Docker Integration
* AWS CLI Integration
* kubectl Integration
* Kubernetes Connectivity

In Progress:

* Jenkins Pipeline Validation
* Automated ECR Push
* Automated Kubernetes Deployment

Status: 🔄 In Progress

---

## Current Status

Project Completion: 95%

```text
Linux Monitoring        ✅
Auto-Healing            ✅
Docker                  ✅
Terraform               ✅
AWS                     ✅
Amazon ECR              ✅
Prometheus              ✅
Grafana                 ✅
Kubernetes              ✅
Jenkins                 🔄
```

---

## Remaining Tasks

### Jenkins Pipeline

* Fix Jenkinsfile formatting issue
* Validate pipeline execution
* Verify ECR push automation
* Verify Kubernetes deployment automation

### Future Enhancements

* Slack Notifications
* Email Alerts
* Terraform Remote State Recovery
* AWS EKS Deployment
* Multi-Node Kubernetes Cluster
* Helm Charts
* ArgoCD GitOps Deployment
* SonarQube Integration
* Trivy Security Scanning

---

## Learning Outcomes

This project helped develop practical experience in:

* Linux Administration
* Shell Scripting
* Docker
* Kubernetes
* Terraform
* AWS Cloud
* Jenkins
* Prometheus
* Grafana
* CI/CD Automation
* Infrastructure Automation
* Observability Engineering

---

## Author

Kannan T

Aspiring DevOps Engineer | Cloud Engineer | Linux Enthusiast

This project was built as a hands-on end-to-end DevOps implementation to demonstrate practical skills in:

Linux Administration
Shell Scripting
Docker
Kubernetes
Terraform
AWS Cloud
Jenkins CI/CD
Prometheus
Grafana
Infrastructure Automation

Currently seeking opportunities in:

DevOps Engineering
Cloud Engineering
Site Reliability Engineering (SRE)
Platform Engineering
Linux Administration

GitHub:
https://github.com/Kannacse

Project Repository:
https://github.com/Kannacse/linux-monitoring-observability-system
