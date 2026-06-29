# DevOps & Cloud Infra Templates

Production-ready DevOps and Cloud project templates designed to bootstrap real-world projects with best practices.

---

## Purpose

This repo is prepared to help you:

- Start DevOps/Cloud projects faster
- Follow industry-standard folder structures
- Practice real-world DevOps/Cloud workflows

---

## What’s Included

- ✅ Documentation
- ✅ Docker & Docker Compose templates
- ✅ GitHub Actions CI/CD pipelines
- ✅ Kubernetes manifests
- ✅ Helm charts
- ✅ Terraform infrastructure templates
- ✅ Monitoring & logging setup
- ✅ Alerts and runbooks
- ✅ Security & scanning examples

---

## Repo Structure

```
devops-cloud-templates/
├── .github/
│   └── workflows/
│       ├── ci.yml
│       ├── cd.yml
│       └── terraform.yml
├── complete-devops-pipeline/
├── docs/
│   ├── architecture.md
│   ├── decisions.md
│   └── runbooks/
├── docker/
│   ├── base/
│   ├── ingress/
│   ├── autoscaling/
│   └── security/
├── github-actions/
├── helm/
│   ├── api-service/
│   ├── worker-service/
│   └── cronjob/
├── kubernetes/
│   ├── base/
│   ├── ingress/
│   ├── autoscaling/
│   └── security/
├── monitoring/
│   ├── prometheus/
│   ├── grafana/
│   ├── loki/
│   └── alertmanager/
├── scripts/
├── terraform/
│   ├── modules/
│   │   ├── vpc/
│   │   ├── iam/
│   │   ├── s3/
│   │   ├── eks/
│   │   └── rds/
│   └── environments/
│       ├── dev/
│       ├── staging/
│       └── prod/
├── LICENSE
└── README.md
```

---

## Getting Started

```bash
# Clone and navigate
git clone https://github.com/miketorreno/devops-cloud-templates.git

cd devops-cloud-templates

# Run setup script
chmod +x scripts/setup.sh

./scripts/setup.sh
```

---

## Overview

### 🐳 Docker Template

**For:** Simple containerized applications

- Multi-stage Dockerfile with security best practices
- Docker Compose with development, staging and production configs
- Nginx reverse proxy configuration
- Health checks and monitoring setup

### 🔄 GitHub Actions Template

**For:** Automated testing and deployment

- Complete CI pipeline (lint, test, scan, build)
- CD pipeline with multi-environment deployment
- Blue-green deployment strategy
- Automated cleanup and maintenance

**Features:**

- Parallel test execution
- Docker image building and pushing
- Security vulnerability scanning
- Slack/email notifications
- Rollback capabilities

### ☸️ Kubernetes Application Template

**For:** Container orchestration

- Production-ready Kubernetes manifests
- Helm charts for templated deployments
- Horizontal Pod Autoscaling
- Service monitoring with Prometheus
- Ingress configuration with TLS

**Components:**

- Deployments, Services, Ingress
- Config Maps and Secrets
- Service Accounts and RBAC
- Network Policies
- Monitoring and logging

### 🌩️ Terraform AWS Infrastructure Template

**For:** Cloud infrastructure deployment

- Complete AWS infrastructure as code
- Multi-environment support (dev/staging/prod)
- VPC, EKS, RDS, S3, and monitoring modules
- Security best practices and cost optimization
- State management with remote backend

**Infrastructure:**

- VPC with public/private subnets
- EKS Kubernetes cluster
- RDS PostgreSQL database
- S3 buckets with encryption
- IAM roles and policies

### 🚀 Complete DevOps Pipeline Template

**Perfect for:** Complete end-to-end DevOps workflow

- Integration of all technologies
- Comprehensive monitoring and observability
- Security scanning and compliance
- Cost optimization and governance
- Complete operational procedures

**End-to-End Features:**

- GitOps workflows
- Service mesh integration
- Advanced monitoring
- Disaster recovery
- Performance optimization

---

## Tools & Technologies

| Category             | Tools                              |
| -------------------- | ---------------------------------- |
| **Containerization** | Docker, Docker Compose, Containerd |
| **Orchestration**    | Kubernetes, Helm, Kustomize        |
| **CI/CD**            | GitHub Actions, ArgoCD, Jenkins    |
| **Infrastructure**   | Terraform, CloudFormation, Pulumi  |
| **Cloud Platforms**  | AWS, Azure, GCP                    |
| **Monitoring**       | Prometheus, Grafana, CloudWatch    |
| **Logging**          | ELK Stack, Fluentd, Loki           |
| **Security**         | Trivy, Snyk, OWASP, Falco          |
| **Networking**       | Nginx, Istio, Envoy                |
| **Databases**        | PostgreSQL, MongoDB, Redis         |

---

## Environment Setup

### Prerequisites

```bash
# Install required tools
- Docker & Docker Compose
- kubectl
- helm
- terraform
- aws cli
- node.js & npm
```

### Quick Setup

```bash
# Clone and setup
git clone https://github.com/miketorreno/devops-cloud-templates.git

cd devops-cloud-templates

./scripts/setup.sh

# Configure AWS credentials
aws configure

# Validate setup
./scripts/validate.sh
```

---

## Features & Capabilities

### 🔒 Security

- Container security scanning
- Infrastructure security checks
- IAM roles and policies
- Network security groups
- Secret management
- Compliance scanning

### 📈 Monitoring & Observability

- Prometheus metrics collection
- Grafana dashboards
- Log aggregation
- Distributed tracing
- Alert management
- Performance monitoring

### 🚀 Performance & Scalability

- Auto-scaling policies
- Load balancing
- Caching strategies
- CDN integration
- Resource optimization
- Performance testing

### 💰 Cost Optimization

- Right-sized resources
- Spot instances
- Reserved instances
- Storage lifecycle policies
- Cost monitoring
- Budget alerts

---

## Documentation

### Getting Started

- [📖 Getting Started Guide](docs/getting-started.md)
- [🏗️ Architecture Overview](docs/architecture.md)
- [🔧 Setup Instructions](docs/setup.md)

### Template Guides

- [🐳 Docker Template Guide](docker/README.md)
- [🔄 GitHub Actions Template Guide](github-actions/README.md)
- [☸️ Kubernetes Template Guide](kubernetes/README.md)
- [🌩️ Terraform Template Guide](terraform/README.md)
- [🚀 Complete DevOps Guide](complete-devops-pipeline/README.md)

### Advanced Topics

- [🔒 Security Best Practices](docs/security.md)
- [📊 Monitoring Setup](docs/monitoring.md)
- [💰 Cost Optimization](docs/cost-optimization.md)
- [🔧 Troubleshooting Guide](docs/troubleshooting.md)

---

## Learning Path

### Beginner (1-2 weeks)

1. Start with **Docker Template**
2. Learn containerization basics
3. Understand Docker Compose
4. Practice Dockerfile optimization

### Intermediate (2-4 weeks)

1. Move to **GitHub Actions Template**
2. Learn CI/CD concepts
3. Set up automated testing
4. Implement deployment pipelines

### Advanced (4-8 weeks)

1. Use **Kubernetes Application Template**
2. Learn orchestration concepts
3. Implement Helm charts
4. Set up monitoring

### Expert (8+ weeks)

1. Master **Terraform AWS Infrastructure**
2. Learn Infrastructure as Code
3. Implement security best practices
4. Build **Complete DevOps Pipeline**

---

## Best Practices Followed

### Infrastructure as Code (IaC)

- All infrastructure defined in code
- Version-controlled configurations
- Automated provisioning and updates
- State management and locking

### CI/CD Automation

- Automated testing and validation
- Multi-environment deployments
- Rollback capabilities
- Security scanning integration

### Secure by Design

- Least privilege access
- Encryption everywhere
- Security scanning at all stages
- Compliance and audit logging

### Cloud-Native Architecture

- Microservices design
- Container orchestration
- Auto-scaling and resilience
- Observability first

### GitOps Workflows

- Declarative configurations
- Automated synchronization
- Drift detection
- Version-controlled deployments

---

## Sample Use Cases

### Startup MVP

- Use Docker template for quick prototyping
- Add CI/CD for automated deployments
- Scale with Kubernetes as you grow
- Migrate to full pipeline when ready

### Enterprise Application

- Start with Terraform for infrastructure
- Implement comprehensive CI/CD
- Add monitoring and observability
- Follow security and compliance

### Learning Project

- Progress through templates sequentially
- Build portfolio of DevOps skills
- Practice real-world scenarios
- Prepare for certifications

### SaaS Platform

- Implement full DevOps pipeline
- Add advanced monitoring
- Optimize for cost and performance
- Ensure high availability

---

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
