# Terraform AWS EC2 Instance

This repository contains Terraform configuration files to provision an **EC2 instance** on **AWS**. The infrastructure is defined as code, making it easy to deploy, manage, and scale resources efficiently.

## Features
- ✅ Deploys an EC2 instance with a specified AMI and instance type.
- ✅ Configurable security groups and key pairs.
- ✅ Supports variable-based customization (instance type, region, tags, etc.).
- ✅ Automatically provisions infrastructure using Terraform.

## Usage

1. Clone the repository:
   ```sh
   git clone (https://github.com/Darshit02/terraform-EC2.git)
   cd terraform-EC2
   ```
2. Initialize Terraform:
   ```sh
   terraform init
   ```
3. Preview the execution plan:
   ```sh
   terraform plan
   ```
4. Apply the configuration to deploy the EC2 instance:
   ```sh
   terraform apply -auto-approve
   ```
5. Destroy the infrastructure when no longer needed:
   ```sh
   terraform destroy -auto-approve
   ```

## Prerequisites
- Terraform installed ([Download here](https://developer.hashicorp.com/terraform/downloads))
- AWS credentials configured (via `aws configure` or environment variables)
- An existing key pair (or generate one using `ssh-keygen`)

## Roadmap
- [ ] Add support for multiple EC2 instances
- [ ] Implement Auto Scaling
- [ ] Integrate with AWS VPC for better security

---

Feel free to contribute or suggest enhancements! 🚀
