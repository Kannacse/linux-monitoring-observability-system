# Linux Monitoring & Auto-Healing Observability Platform

A modular Linux infrastructure monitoring and observability platform built using Bash scripting, Docker, Prometheus, Grafana, and automated remediation techniques.

This project monitors Linux system health, collects infrastructure metrics, visualizes performance dashboards, and performs automated recovery actions for failed services.

---

# Project Overview

This project was developed to understand how real infrastructure monitoring and observability platforms work.

The system combines:

- Custom Linux monitoring scripts
- Threshold-based analysis
- Auto-healing mechanisms
- Centralized logging
- Docker-based observability stack
- Real-time dashboard visualization

---

# Features

## Infrastructure Monitoring

Monitor:

- CPU utilization
- Memory utilization
- Disk usage
- Linux service availability

---

## Auto-Healing

Automatically:

- Detect failed services
- Restart inactive services
- Generate operational logs

---

## Logging System

Maintain:

- Monitoring execution history
- Timestamp-based logs
- Alert and recovery tracking

Example:

```text
[2026-05-15 17:15:52]
CPU HEALTHY - Usage: 12%

[2026-05-15 17:16:03]
AUTO-HEALING - Restarted sshd
```

---

## Scheduler Automation

Automated execution using:

- Cron jobs

---

## Observability Stack

Integrated:

- Docker
- Node Exporter
- Prometheus
- Grafana

Features:

- Real-time metrics
- Dashboard visualization
- Infrastructure monitoring

---

# Project Architecture

```text
Linux System
│
├── Monitoring Layer
│   ├── CPU Monitor
│   ├── Memory Monitor
│   ├── Disk Monitor
│   └── Service Monitor
│
├── Auto-Healing Layer
│   ├── Restart Service
│   ├── Cleanup Logs
│   └── Resource Handling
│
├── Logging Layer
│
├── Scheduler Layer
│
├── Observability Layer
│   ├── Node Exporter
│   ├── Prometheus
│   └── Grafana
│
└── Dashboard Visualization
```

---

# Project Structure

```text
linux-monitoring-system/

├── analyzer/
├── config/
├── custom-metrics/
├── healer/
├── logs/
├── main-controller/
├── monitor/
├── observability/
├── scheduler/
├── screenshots/
├── utils/
├── start-project.sh
└── README.md
```

---

# Technologies Used

## Scripting & Linux

- Bash
- Cron
- systemctl
- AWK
- GREP

## Monitoring

- Prometheus
- Node Exporter

## Visualization

- Grafana

## Containerization

- Docker
- Docker Compose

---

# Monitoring Workflow

```text
Cron
 ↓

main-monitor
 ↓

CPU
Memory
Disk
Service Monitoring

 ↓

Threshold Evaluation

 ↓

Logging

 ↓

Auto-Healing
```

---

# Observability Workflow

```text
Node Exporter
      ↓

Prometheus
      ↓

Grafana
```

---

# Installation

Clone repository:

```bash
git clone <repository-url>

cd linux-monitoring-system
```

---

# Start Entire Platform

Run:

```bash
./start-project.sh
```

This automatically:

- Starts Docker services
- Starts Prometheus
- Starts Grafana
- Starts monitoring scripts

---

# Dashboard Access

## Prometheus

```text
http://localhost:9090
```

---

## Grafana

```text
http://localhost:3000
```

Default:

```text
Username: admin
Password: admin
```

---

# Screenshots

Add screenshots here:

- Grafana Dashboard
- Prometheus Targets
- Docker Containers
- Monitoring Logs
- Auto-Healing Execution

---

# Learning Outcomes

This project helped develop practical knowledge in:

- Linux monitoring
- Bash automation
- Infrastructure observability
- Service remediation
- Docker containerization
- Metrics collection
- Dashboard visualization
- DevOps workflows
- Infrastructure troubleshooting

---

# Future Enhancements

Planned roadmap:

## V2
- Custom Prometheus Metrics
- Dashboard Improvements

## V3
- Jenkins CI/CD Integration

## V4
- Kubernetes Deployment

## V5
- Cloud-scale Monitoring Platform

---

# Author

Kannan

GitHub:
https://github.com/Kannacse
# CICD Test
