# Terraform AWS Infrastructure as Code Lab

<p align="center">
  <img src="https://img.shields.io/badge/Terraform-HCL-844FBA?style=for-the-badge&logo=terraform&logoColor=white" alt="Terraform" />
  <img src="https://img.shields.io/badge/AWS-Cloud_Provider-232F3E?style=for-the-badge&logo=amazon-aws&logoColor=white" alt="AWS" />
  <img src="https://img.shields.io/badge/IaC-Automated_Provisioning-623CE4?style=for-the-badge&logo=hashicorp&logoColor=white" alt="IaC" />
</p>

---

## 📌 Overview

This repository demonstrates foundational **Infrastructure as Code (IaC)** implementations using **HashiCorp Terraform** targeting **Amazon Web Services (AWS)**. It covers resource declaration, variable parameterization (`variables.tf`), environment overrides (`terraform.tfvars`), state tracking, and output exports.

---

## 🏗️ Architecture & Resources

```mermaid
flowchart LR
    tfvars[terraform.tfvars] --> vars[variables.tf]
    vars --> main[main.tf]
    main --> Provider[AWS Provider]
    Provider --> EC2[aws_instance<br/>EC2 Compute]
    Provider --> SG[aws_security_group<br/>Firewall Rules]
    main --> Out[Outputs: public_ip]
```

---

## 📂 Laboratory Structure

```text
.
└── practice/
    ├── main.tf              # AWS provider, EC2 instance, security group definitions
    ├── variables.tf         # Input variable declarations (AMI ID, instance type)
    ├── terraform.tfvars     # Value definitions (e.g. t3.micro, AMI mappings)
    └── outputs.tf           # Exported attributes (public IP, instance IDs)
```

---

## 🚀 Execution Workflow

```bash
# 1. Initialize working directory & download AWS provider plugins
terraform init

# 2. Format and validate configuration syntax
terraform fmt
terraform validate

# 3. Create execution plan
terraform plan

# 4. Apply changes safely
terraform apply
```
